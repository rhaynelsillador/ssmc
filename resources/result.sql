/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ssmc

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-10-15 21:41:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result` varchar(125) NOT NULL,
  `uploadedby` int(11) NOT NULL,
  `examresultid` bigint(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uploadedby` (`uploadedby`),
  KEY `examresultid` (`examresultid`),
  CONSTRAINT `examresultid` FOREIGN KEY (`examresultid`) REFERENCES `examresult` (`id`),
  CONSTRAINT `uploadedby` FOREIGN KEY (`uploadedby`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
