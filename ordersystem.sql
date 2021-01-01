/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost
 Source Database       : ordersystem

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : utf-8

 Date: 12/28/2020 15:37:36 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_admin`
-- ----------------------------
BEGIN;
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin1');
COMMIT;

-- ----------------------------
--  Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `flavor` varchar(255) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_menu`
-- ----------------------------
BEGIN;
INSERT INTO `t_menu` VALUES ('1', '香酥鸡', '34', '香', '1'), ('2', '梅菜扣肉', '65', '香', '1'), ('3', '三杯鸡', '33', '香', '1'), ('4', '毛血旺', '68', '辣', '1'), ('5', '菠菜抖粉丝', '12', '辣', '2'), ('6', '凉拌豆腐皮', '34', '苦', '2'), ('7', '酱牛肉', '32', '微辣', '2'), ('8', '鱼头豆腐汤', '32', '香', '3'), ('9', '瘦肉鸡蛋白菜汤', '21', '甜', '3'), ('10', '西葫芦虾仁蒸铰', '10', '香', '4'), ('11', '蛋炒饭', '15', '咸', '4'), ('12', '椰蓉面包', '8', '香', '5'), ('18', '你真行', '12', 'fd', '1');
COMMIT;

-- ----------------------------
--  Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_order`
-- ----------------------------
BEGIN;
INSERT INTO `t_order` VALUES ('1', '1', '7', '1', '2020-10-07', '1'), ('2', '1', '2', '1', '2020-10-07', '1'), ('3', '1', '5', '1', '2020-10-07', '1'), ('4', '1', '9', '1', '2020-10-07', '1'), ('5', '1', '10', '1', '2020-10-07', '1'), ('6', '1', '10', null, '2020-10-07', '0'), ('7', '1', '10', '1', '2020-10-07', '1'), ('8', '1', '6', '1', '2020-10-07', '1'), ('9', '1', '10', '1', '2020-10-07', '1'), ('10', '1', '7', '1', '2020-10-07', '1'), ('11', '2', '8', null, '2020-10-07', '0'), ('12', '2', '12', null, '2020-10-07', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_type`
-- ----------------------------
BEGIN;
INSERT INTO `t_type` VALUES ('1', '热菜'), ('2', '凉菜'), ('3', '烫羹'), ('4', '主食'), ('5', '烘焙');
COMMIT;

-- ----------------------------
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `registerdate` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `t_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('1', 'zhangsan', 'zhangsan', '张三', '男', '17890980967', '2020-09-09', '北京'), ('2', 'lisi', 'lisi123', '李四', '女', '18867851543', '2020-10-10', '天津'), ('9', 'wangqi', 'wangqi', '王七', '男', '18810989876', '2020-10-22', '城需要需要');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
