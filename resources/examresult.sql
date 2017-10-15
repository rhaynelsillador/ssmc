/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ssmc

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-10-15 21:41:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for examresult
-- ----------------------------
DROP TABLE IF EXISTS `examresult`;
CREATE TABLE `examresult` (
  `id` bigint(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `dateexamined` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `dateencoded` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `encodedby` int(25) NOT NULL,
  `accountid` bigint(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encodedby` (`encodedby`),
  KEY `accountid` (`accountid`),
  CONSTRAINT `accountid` FOREIGN KEY (`accountid`) REFERENCES `registered_account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `encodedby` FOREIGN KEY (`encodedby`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
