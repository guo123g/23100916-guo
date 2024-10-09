/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80035
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80035
File Encoding         : 65001

Date: 2024-09-25 10:34:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '类型',
  `value` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '字典名',
  `label` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '字典值',
  `description` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` int DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` int DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', 'gender', '1', '男', '性别', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('2', 'gender', '2', '女', '性别', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('3', 'orderStatus', '1', '未付款', '订单状态', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('4', 'orderStatus', '2', '待付款', '订单状态', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('5', 'orderStatus', '3', '已付款', '订单状态', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('6', 'orderStatus', '4', '已收货', '订单状态', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('7', 'filmtype', '1', '动作', '类型', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('8', 'filmtype', '2', '剧情', '类型', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('9', 'filmtype', '3', '情感', '类型', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('10', 'filmtype', '4', '记录', '类型', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('11', 'language', '1', '汉语普通话', '语言', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('12', 'language', '2', '汉语粤语', '语言', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('13', 'language', '3', '英语', '语言', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('14', 'language', '4', '法语', '语言', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('15', 'userStatus', '1', '正常', '用户状态', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('16', 'userStatus', '2', '冻结', '用户状态', null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pid` bigint DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `icon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '菜单图标',
  `create_by` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` int DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', '', null, '&#xe609;', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '控制台', '/a/views/console', null, null, null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('3', '1', '用户管理', '/a/user/list', null, null, null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', '/a/menu/list', null, null, null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('5', '1', '角色管理', '/a/role/list', null, null, null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('6', '0', '人员管理', '', null, '&#xe857;', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('7', '6', '人员列表', '/a/member/list', null, null, null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('13', '3', '新增权限', 'create', null, null, null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('14', '3', '查看权限', 'list', null, null, null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('16', '3', '测试', 'abcd', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_by` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` int DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', null, null, null, null, '0');
INSERT INTO `sys_role` VALUES ('2', '普通用户', null, null, null, null, null, '0');
INSERT INTO `sys_role` VALUES ('6', '测试', null, null, null, null, null, '0');
INSERT INTO `sys_role` VALUES ('7', 'guo', null, null, null, null, null, '0');
INSERT INTO `sys_role` VALUES ('8', '11', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sys_role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('110', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('111', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('112', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('113', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('114', '1', '4');
INSERT INTO `sys_role_menu` VALUES ('116', '1', '5');
INSERT INTO `sys_role_menu` VALUES ('118', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('119', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('181', '2', '14');
INSERT INTO `sys_role_menu` VALUES ('182', '2', '3');
INSERT INTO `sys_role_menu` VALUES ('183', '2', '1');
INSERT INTO `sys_role_menu` VALUES ('184', '2', '7');
INSERT INTO `sys_role_menu` VALUES ('185', '2', '6');
INSERT INTO `sys_role_menu` VALUES ('186', '5', '13');
INSERT INTO `sys_role_menu` VALUES ('187', '5', '3');
INSERT INTO `sys_role_menu` VALUES ('192', '6', '13');
INSERT INTO `sys_role_menu` VALUES ('193', '6', '3');
INSERT INTO `sys_role_menu` VALUES ('194', '6', '14');
INSERT INTO `sys_role_menu` VALUES ('195', '6', '3');
INSERT INTO `sys_role_menu` VALUES ('196', '6', '16');
INSERT INTO `sys_role_menu` VALUES ('197', '6', '3');
INSERT INTO `sys_role_menu` VALUES ('199', '6', '1');
INSERT INTO `sys_role_menu` VALUES ('200', '7', '2');
INSERT INTO `sys_role_menu` VALUES ('201', '7', '1');
INSERT INTO `sys_role_menu` VALUES ('202', '7', '13');
INSERT INTO `sys_role_menu` VALUES ('203', '7', '3');
INSERT INTO `sys_role_menu` VALUES ('204', '7', '14');
INSERT INTO `sys_role_menu` VALUES ('205', '7', '3');
INSERT INTO `sys_role_menu` VALUES ('206', '7', '16');
INSERT INTO `sys_role_menu` VALUES ('207', '7', '3');
INSERT INTO `sys_role_menu` VALUES ('208', '7', '4');
INSERT INTO `sys_role_menu` VALUES ('209', '7', '1');
INSERT INTO `sys_role_menu` VALUES ('210', '7', '5');
INSERT INTO `sys_role_menu` VALUES ('211', '7', '1');
INSERT INTO `sys_role_menu` VALUES ('212', '7', '7');
INSERT INTO `sys_role_menu` VALUES ('213', '7', '6');
INSERT INTO `sys_role_menu` VALUES ('215', '8', '2');
INSERT INTO `sys_role_menu` VALUES ('216', '8', '1');
INSERT INTO `sys_role_menu` VALUES ('217', '8', '13');
INSERT INTO `sys_role_menu` VALUES ('218', '8', '3');
INSERT INTO `sys_role_menu` VALUES ('219', '8', '14');
INSERT INTO `sys_role_menu` VALUES ('220', '8', '3');
INSERT INTO `sys_role_menu` VALUES ('221', '8', '16');
INSERT INTO `sys_role_menu` VALUES ('222', '8', '3');
INSERT INTO `sys_role_menu` VALUES ('223', '8', '4');
INSERT INTO `sys_role_menu` VALUES ('224', '8', '1');
INSERT INTO `sys_role_menu` VALUES ('225', '8', '5');
INSERT INTO `sys_role_menu` VALUES ('226', '8', '1');
INSERT INTO `sys_role_menu` VALUES ('227', '8', '7');
INSERT INTO `sys_role_menu` VALUES ('228', '8', '6');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mobile` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `create_by` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` int DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', null, '$2a$10$7YeyQKrlX/lTktWAOKmqD.3t6.iPMuEKBZ2TOnFe4ei9AESHkWG12', '1@qq.com', '13888888888', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('2', 'rubin', 'rubin', '$2a$10$7YeyQKrlX/lTktWAOKmqD.3t6.iPMuEKBZ2TOnFe4ei9AESHkWG12', '2@qq.com', '13999999999', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('5', 'rubin1', 'rubin', '$2a$10$7YeyQKrlX/lTktWAOKmqD.3t6.iPMuEKBZ2TOnFe4ei9AESHkWG12', '2@qq.com', '13999999999', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('6', 'rubin2', null, '$2a$10$7YeyQKrlX/lTktWAOKmqD.3t6.iPMuEKBZ2TOnFe4ei9AESHkWG12', '2@qq.com', '13999999999', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('7', 'rubin3', null, '$2a$10$7YeyQKrlX/lTktWAOKmqD.3t6.iPMuEKBZ2TOnFe4ei9AESHkWG12', '2@qq.com', '13999999999', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('10', 'nihao', 'nihao', '$2a$10$Ed56cy5rk9S2b6nctO0C0uvcj2zszJi5SZRsm4L.yPMwTKqxX7GFW', 'nihao@qq.com', '18804638068', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('11', 'nihao111', 'nihao111', '$2a$10$ocRDTtoiDEIxaBkPWS.VaelZgnDNXO0jLyu.5hstpGpjRPZzOU.d6', 'nihao111@qq.com', '13333333333', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('12', 'nihao555', 'nihao555', '$2a$10$zxNDeA4DOW27LC2MhK8bTuL62RYTRoR5p8mJC8w.Xz3KW7n4I1J8C', 'niaho@qq.com', '1333333333', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('13', 'nihao666', 'nihao7777', '$2a$10$svAJeOaM6r2ADVvZEHn1EuI9bmwu.RH55FunohKUhZO8UzsCnab3O', 'nihao666@qq.com', '13333333333', '1', null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('14', 'nihao900', 'nihao900', '$2a$10$AZjKtW/C3WzP6sWOOYLkuukxt7420GWAlQu4Y1nLWm81E6NeaJHZ2', 'nihao900@qq.com', '1333333333', '1', null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sys_user_id` int DEFAULT NULL COMMENT '用户ID',
  `sys_role_id` int DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
INSERT INTO `sys_user_role` VALUES ('12', '9', '1');
INSERT INTO `sys_user_role` VALUES ('15', '2', '2');
INSERT INTO `sys_user_role` VALUES ('16', '10', null);
INSERT INTO `sys_user_role` VALUES ('17', '10', '2');
INSERT INTO `sys_user_role` VALUES ('19', '11', null);
INSERT INTO `sys_user_role` VALUES ('20', '11', '2');
INSERT INTO `sys_user_role` VALUES ('22', '12', '1');
INSERT INTO `sys_user_role` VALUES ('26', '13', null);
INSERT INTO `sys_user_role` VALUES ('27', '13', '2');
INSERT INTO `sys_user_role` VALUES ('32', '14', null);
INSERT INTO `sys_user_role` VALUES ('33', '14', null);
INSERT INTO `sys_user_role` VALUES ('34', '14', '6');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', 'a');
INSERT INTO `test` VALUES ('2', 'b');
INSERT INTO `test` VALUES ('3', 'c');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'a');
INSERT INTO `user` VALUES ('2', 'b');
INSERT INTO `user` VALUES ('3', 'c');
INSERT INTO `user` VALUES ('4', 'd');
