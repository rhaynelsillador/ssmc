/*
Navicat MySQL Data Transfer

Source Server         : SSMC
Source Server Version : 50723
Source Host           : 206.189.89.173:3306
Source Database       : ssmc

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-08-19 13:06:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `dateadded` timestamp NULL DEFAULT NULL,
  `dateupdated` timestamp NULL DEFAULT NULL,
  `type` varchar(45) NOT NULL DEFAULT '',
  `sorter` int(255) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES ('1', 'Mission', '<p>We manages, upgrades, networks, innovates, complies and advocates towards excellent quality healthcare services.&nbsp;</p>\n', '2017-10-04 14:18:46', '2017-12-09 08:16:13', 'HOSPITALS', '1');
INSERT INTO `aboutus` VALUES ('2', 'Basic History', '<p><strong>2007</strong>&nbsp;&ndash; SSMC Satellite Hospital (Rosario Cavite)</p>\n\n<p><strong>2001</strong>&nbsp;&ndash; SSMC Satellite Clinics</p>\n\n<p><strong>2000</strong>&nbsp;&ndash; SSMC Satellite Hospital (Gateway)</p>\n\n<p><strong>1991</strong>&nbsp;&ndash; South Superhighway Medical Center</p>\n\n<p><strong>1975</strong>&nbsp;&ndash; Cruz-Rabe Maternity &amp; General Hospital</p>\n\n<p><strong><strong>1969</strong>&nbsp;- </strong>Year of founding, as a 3-bed maternity lying-in clinic.</p>\n\n<p><strong><strong>1974</strong>&nbsp;-</strong> Expanded into a primary general hospital with 12-bed capacity.</p>\n\n<p><strong><strong>1981</strong>&nbsp;-</strong> Expanded and upgraded into a secondary hospital with 50-bed capacity.</p>\n\n<p><strong>1991</strong>&nbsp;- Year of founding with 10-bed capacity primary hospital, servicing mostly nearby clients composed of factory workers and their families.</p>\n\n<p><strong>1993</strong>&nbsp;- Upgraded to Secondary hospital with 25-bed capacity.</p>\n\n<p><strong>1994</strong>&nbsp;- Upgraded to Tertiary hospital with 50-bed capacity.</p>\n\n<p><strong>1994</strong>&nbsp;- Accredited by the Employees Compensation Commission (ECC) as an official industrial clinic to provide free medical services among workers of small and medium scale industries inline with the program of then Pres. Fidel V. Ramos.</p>\n\n<p><strong>1998</strong>&nbsp;- Accredited by the Philippine Overseas and Employment Agency (POEA) to cater physical examination to land-based and sea-based workers for abroad.</p>\n\n<p><strong>1999</strong>&nbsp;- Accredited by PhilHealth (Philippine Health Insurance Corporation).</p>\n\n<p><strong>2000</strong>&nbsp;- Accredited by the Overseas Workers and Welfare Administration (OWWA) as one of their out- patient medical clinics that renders free unlimited consultations, medicine and laboratory for OWWA members and its dependents.</p>\n\n<p><strong>2002</strong>&nbsp;- Accredited by Land Transportation Office (LTO) as a drug testing center.</p>\n', '2017-10-04 14:24:18', '2017-11-23 00:53:22', 'HOSPITALS', '2');
INSERT INTO `aboutus` VALUES ('3', 'About SSMC', '<p>The SSMC Health System exists in almost a dozen healthcare facilities of the SSMC Group of Hospitals and Clinics. It aims to provide convenient, high standard diagnostic and primary care for patients of all ages in a pleasant setting.</p>\n\n<p>The SSMC Health brand caters to a multitude of industrial companies as clients to fill their requirements for pre-employment sc treening of applicants, and/or annual physical examinations, be they on site or at the various SSMC Health locations. Specialized testsand services can be provided such as drug testing, vaccinations, blood testing, conventional/digital x-ray, dental and other packages suitable to the needs of the subject. Our general practitioners and specialists provide a wide range of primary care services including family medicine, check ups, care of on-going chronic illnesses and treatment of acute or serious problems in many specialties.</p>\n', '2017-10-04 15:10:25', '2017-11-23 00:53:14', 'HOSPITALS', '3');
INSERT INTO `aboutus` VALUES ('4', 'About SSMC', '<p>Healthcare is the core competence of the husband and wife medical professionals team and Founders, Drs. Jose and Erlinda Rabe. From their humble abode at the then Taguig Rizal, they have nurtured their medical practice where sprouted a string of low cost but efficient and effective healtcare facilities. The 5 clinics have a symbiotic operating relationship with 3 hospitals which makes up the &quot;SSMC Group&quot;. They are now a by word in the various communities and industries in the Baclaran, Alabang, Paranaque, Las pinas, Calamba, Sta. Rosa and Rosario Cavite.</p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>MISSION</strong></span></span></span></p>\n\n<p style=\"text-align:center\">The SSMCHEALTH: A TRUSTED PHILIPPINE BRAND IN AFFORDABLE QUALITY HEALTHCARE</p>\n\n<p style=\"text-align:center\"><span style=\"color:#3498db\"><strong><span style=\"font-size:24px\">VISION</span></strong></span></p>\n\n<p style=\"text-align:center\">The SSMCHEALTH Manages, Upgrades, Networks, Innovates, Complies and Advocates towards</p>\n\n<p style=\"text-align:center\">Quality healthcare services guided by its motto of&nbsp; &quot;Happiness thru Health care is our concern.&quot;</p>\n\n<p style=\"text-align:center\">(M.U.N.I.C.A.H)</p>\n\n<p style=\"text-align:center\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>CORE VALUES</strong></span></span></p>\n\n<p style=\"text-align:center\">Compassionate, Excellent, Ethical, and Socially responsible ( C.E.E.Sr )</p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n', '2017-11-23 00:59:44', '2018-07-18 09:02:48', 'CLINIC', '4');
INSERT INTO `aboutus` VALUES ('5', 'Mission', '<p>To help the constituents of Taguig in their medical needs.</p>\n', '2017-11-23 01:05:18', '2017-11-23 01:05:18', 'CLINIC', '5');

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertisement
-- ----------------------------

-- ----------------------------
-- Table structure for analytics
-- ----------------------------
DROP TABLE IF EXISTS `analytics`;
CREATE TABLE `analytics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(75) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `latitude` double(255,0) DEFAULT NULL,
  `longhitude` double(255,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2613 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of analytics
-- ----------------------------
INSERT INTO `analytics` VALUES ('1', 'Philippines', '121.58.211.162', '2017-12-14 00:35:19', 'http://ssmcgroup.ph/HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2', 'Philippines', '121.58.211.162', '2017-12-14 00:48:15', 'http://ssmcgroup.ph/HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('3', 'Philippines', '121.58.211.162', '2017-12-14 00:48:16', 'http://ssmcgroup.ph/HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('4', 'Philippines', '121.58.211.162', '2017-12-14 00:48:27', 'http://ssmcgroup.ph/About', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('5', 'Philippines', '121.58.211.162', '2017-12-14 00:48:29', 'http://ssmcgroup.ph/Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('6', 'Philippines', '121.58.211.162', '2017-12-14 00:48:30', 'http://ssmcgroup.ph/IndustrialMedicine', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('7', 'Philippines', '196.52.43.55', '2017-12-14 01:09:12', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('8', 'Philippines', '157.52.156.49', '2017-12-14 01:30:54', 'http://m.baidu.com/?rands=_45151464682562782577868', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('9', 'Philippines', '157.52.156.49', '2017-12-14 01:30:54', 'http://www.ceek.jp/?rands=_606864999210806482317632', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('10', 'Philippines', '142.252.251.228', '2017-12-14 03:31:04', 'http://www.sogou.com/?rands=_124744659141457469293216', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('11', 'Philippines', '142.252.251.228', '2017-12-14 12:35:39', 'http://www.so.com/?rands=_106402492741809324335496', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('12', 'Philippines', '142.252.251.228', '2017-12-14 12:35:39', 'http://www.sogou.com/?rands=_396031008042047286372300', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('13', 'Philippines', '127.0.0.1', '2017-12-14 14:08:08', 'null://null:-1null', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('14', 'Philippines', '172.104.108.109', '2017-12-14 16:20:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('15', 'Philippines', '208.100.26.232', '2017-12-14 17:27:55', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('16', 'Philippines', '94.102.49.190', '2017-12-14 21:04:50', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('17', 'Philippines', '142.252.251.228', '2017-12-14 21:59:03', 'http://www.sogou.com/?rands=_324582821218721922089600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('18', 'Philippines', '121.58.211.162', '2017-12-15 00:28:20', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('19', 'Philippines', '121.58.211.162', '2017-12-15 00:28:28', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('20', 'Philippines', '121.58.211.162', '2017-12-15 00:28:37', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('21', 'Philippines', '121.58.211.162', '2017-12-15 00:31:59', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('22', 'Philippines', '121.58.211.162', '2017-12-15 00:32:18', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('23', 'Philippines', '121.58.211.162', '2017-12-15 00:35:54', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('24', 'Philippines', '121.58.211.162', '2017-12-15 00:35:59', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('25', 'Philippines', '121.58.211.162', '2017-12-15 00:36:38', 'http://ssmcgroup.ph/HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('26', 'Philippines', '121.58.211.162', '2017-12-15 00:37:45', 'http://ssmcgroup.ph/HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('27', 'Philippines', '121.58.211.162', '2017-12-15 00:37:48', 'http://ssmcgroup.ph/Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('28', 'Philippines', '121.58.211.162', '2017-12-15 00:37:56', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('29', 'Philippines', '121.58.211.162', '2017-12-15 00:38:09', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('30', 'Philippines', '121.58.211.162', '2017-12-15 00:39:36', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('31', 'Philippines', '121.58.211.162', '2017-12-15 00:41:09', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('32', 'Philippines', '121.58.211.162', '2017-12-15 00:41:34', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('33', 'Philippines', '121.58.211.162', '2017-12-15 00:43:34', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('34', 'Philippines', '121.58.211.162', '2017-12-15 00:46:10', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('35', 'Philippines', '121.58.211.162', '2017-12-15 00:48:53', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('36', 'Philippines', '121.58.211.162', '2017-12-15 00:53:51', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('37', 'Philippines', '121.58.211.162', '2017-12-15 01:04:17', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('38', 'Philippines', '121.58.211.162', '2017-12-15 01:04:23', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('39', 'Philippines', '121.58.211.162', '2017-12-15 01:04:55', 'http://ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('40', 'Philippines', '47.203.90.223', '2017-12-15 01:38:43', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('41', 'Philippines', '196.52.43.66', '2017-12-15 06:09:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('42', 'Philippines', '179.159.178.188', '2017-12-15 06:24:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('43', 'Philippines', '179.159.178.188', '2017-12-15 06:24:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('44', 'Philippines', '157.52.156.49', '2017-12-15 06:57:49', 'http://www.ceek.jp/?rands=_50521739541459621318152', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('45', 'Philippines', '62.210.115.188', '2017-12-15 07:00:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('46', 'Philippines', '142.252.251.228', '2017-12-15 07:14:04', 'http://www.so.com/?rands=_1948018982823634920686024', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('47', 'Philippines', '54.91.182.11', '2017-12-15 07:21:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('48', 'Philippines', '185.110.132.232', '2017-12-15 08:05:59', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('49', 'Philippines', '62.210.115.188', '2017-12-15 08:37:51', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('50', 'Philippines', '23.225.168.14', '2017-12-15 09:08:37', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('51', 'Philippines', '64.56.69.162', '2017-12-15 15:55:39', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('52', 'Philippines', '60.13.192.21', '2017-12-15 18:52:22', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('53', 'Philippines', '121.58.211.162', '2017-12-16 02:23:58', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('54', 'Philippines', '121.58.211.162', '2017-12-16 02:24:10', 'http://ssmcgroup.ph/Careers', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('55', 'Philippines', '141.212.122.81', '2017-12-16 03:11:56', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('56', 'Philippines', '142.252.251.228', '2017-12-16 04:56:29', 'http://www.so.com/?rands=_19010081014426246666648136', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('57', 'Philippines', '142.252.251.228', '2017-12-16 04:56:30', 'http://www.baidu.com/?rands=_1548032136017790961992492', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('58', 'Philippines', '142.252.251.228', '2017-12-16 04:56:30', 'http://www.sogou.com/?rands=_2052116548812696182371796', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('59', 'Philippines', '66.249.82.70', '2017-12-16 07:30:37', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('60', 'Philippines', '66.249.82.70', '2017-12-16 07:31:11', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('61', 'Philippines', '118.167.44.10', '2017-12-16 11:40:36', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('62', 'Philippines', '118.167.44.10', '2017-12-16 11:40:44', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('63', 'Philippines', '111.121.193.195', '2017-12-16 11:47:18', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('64', 'Philippines', '172.104.108.109', '2017-12-16 13:42:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('65', 'Philippines', '142.252.251.228', '2017-12-16 14:08:53', 'http://www.sogou.com/?rands=_936510265941351205120600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('66', 'Philippines', '142.252.251.228', '2017-12-16 14:08:54', 'http://www.so.com/?rands=_682056397630097591164480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('67', 'Philippines', '142.252.251.228', '2017-12-16 14:08:54', 'http://www.baidu.com/?rands=_114108774046042483168648', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('68', 'Philippines', '118.123.12.177', '2017-12-16 16:23:01', 'http://www.baidu.com/?rands=_728421754055139491344', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('69', 'Philippines', '157.52.156.49', '2017-12-16 22:28:29', 'http://www.ceek.jp/?rands=_31714910361603734707728', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('70', 'Philippines', '157.52.156.49', '2017-12-16 22:28:29', 'http://m.baidu.com/?rands=_66872625608555132598144', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('71', 'Philippines', '123.249.81.40', '2017-12-16 23:47:57', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('72', 'Philippines', '139.162.114.70', '2017-12-17 04:49:57', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('73', 'Philippines', '24.198.102.169', '2017-12-17 05:35:04', 'http://azenv.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('74', 'Philippines', '142.252.251.228', '2017-12-17 19:05:51', 'http://www.baidu.com/?rands=_478045441002745573619908400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('75', 'Philippines', '142.252.251.228', '2017-12-17 19:05:52', 'http://www.so.com/?rands=_1472043251054346506384600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('76', 'Philippines', '139.162.114.70', '2017-12-17 20:05:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('77', 'Philippines', '54.90.171.76', '2017-12-17 20:48:19', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('78', 'Philippines', '169.54.233.118', '2017-12-17 20:54:46', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('79', 'Philippines', '139.162.203.18', '2017-12-17 22:30:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('80', 'Philippines', '139.162.111.98', '2017-12-17 23:19:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('81', 'Philippines', '120.92.26.218', '2017-12-18 03:45:10', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('82', 'Philippines', '54.242.88.144', '2017-12-18 04:46:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('83', 'Philippines', '66.102.6.214', '2017-12-18 10:19:22', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('84', 'Philippines', '127.0.0.1', '2017-12-18 11:57:44', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('85', 'Philippines', '142.252.251.228', '2017-12-18 13:43:18', 'http://www.sogou.com/?rands=_818430884405553490817234304', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('86', 'Philippines', '142.252.251.228', '2017-12-18 13:43:19', 'http://www.baidu.com/?rands=_2071268080014687403488496', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('87', 'Philippines', '142.252.251.228', '2017-12-18 13:43:23', 'http://www.so.com/?rands=_5790151317229656538034560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('88', 'Philippines', '157.52.156.49', '2017-12-18 13:46:50', 'http://www.ceek.jp/?rands=_223023346017964153529412', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('89', 'Philippines', '173.212.217.181', '2017-12-18 14:59:31', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('90', 'Philippines', '173.212.217.181', '2017-12-18 14:59:31', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('91', 'Philippines', '173.212.217.181', '2017-12-18 14:59:32', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('92', 'Philippines', '189.4.186.20', '2017-12-18 15:59:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('93', 'Philippines', '189.4.186.20', '2017-12-18 16:00:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('94', 'Philippines', '164.52.7.130', '2017-12-18 16:21:18', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('95', 'Philippines', '209.126.136.4', '2017-12-18 19:39:54', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('96', 'Philippines', '60.191.38.77', '2017-12-18 23:02:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('97', 'Philippines', '142.252.251.228', '2017-12-18 23:19:30', 'http://www.sogou.com/?rands=_1319039610817231223088944', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('98', 'Philippines', '142.252.251.228', '2017-12-18 23:19:31', 'http://www.baidu.com/?rands=_187115783761905921388960', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('99', 'Philippines', '185.110.132.232', '2017-12-18 23:27:08', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('100', 'Philippines', '157.52.156.49', '2017-12-19 03:35:46', 'http://m.baidu.com/?rands=_478040095019020541682400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('101', 'Philippines', '157.52.156.49', '2017-12-19 03:35:46', 'http://www.ceek.jp/?rands=_586045477615712383105120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('102', 'Philippines', '176.31.252.210', '2017-12-19 05:06:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('103', 'Philippines', '213.59.151.165', '2017-12-19 05:29:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('104', 'Philippines', '142.252.251.228', '2017-12-19 08:28:50', 'http://www.sogou.com/?rands=_422886875624784981036316', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('105', 'Philippines', '142.252.251.228', '2017-12-19 08:28:50', 'http://www.so.com/?rands=_1319055015021984663739248', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('106', 'Philippines', '142.252.251.228', '2017-12-19 08:28:51', 'http://www.baidu.com/?rands=_19901153642969067187784', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('107', 'Philippines', '66.102.6.214', '2017-12-19 12:19:13', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('108', 'Philippines', '23.225.168.14', '2017-12-19 12:34:42', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('109', 'Philippines', '109.236.82.210', '2017-12-19 13:05:02', 'http://www.bitstarz.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('110', 'Philippines', '157.52.156.49', '2017-12-19 17:19:24', 'http://m.baidu.com/?rands=_36121360062213312222300', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('111', 'Philippines', '157.52.156.49', '2017-12-19 17:19:25', 'http://www.ceek.jp/?rands=_879056847020076934010780', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('112', 'Philippines', '5.188.87.7', '2017-12-19 17:39:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('113', 'Philippines', '142.252.251.228', '2017-12-19 18:03:52', 'http://www.baidu.com/?rands=_3505388195225938331767948', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('114', 'Philippines', '142.252.251.228', '2017-12-19 18:03:52', 'http://www.so.com/?rands=_11670108836025757221534752', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('115', 'Philippines', '164.132.91.1', '2017-12-19 18:47:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('116', 'Philippines', '222.186.138.65', '2017-12-19 20:17:59', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('117', 'Philippines', '139.162.111.98', '2017-12-19 21:11:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('118', 'Philippines', '60.191.38.77', '2017-12-19 22:54:23', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('119', 'Philippines', '168.1.128.51', '2017-12-20 01:11:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('120', 'Philippines', '121.58.211.162', '2017-12-20 06:26:00', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('121', 'Philippines', '121.58.211.162', '2017-12-20 06:26:10', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('122', 'Philippines', '121.58.211.162', '2017-12-20 06:26:43', 'http://ssmcgroup.ph/Welcome', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('123', 'Philippines', '121.58.211.162', '2017-12-20 06:27:13', 'http://ssmcgroup.ph/Medical-Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('124', 'Philippines', '209.126.136.4', '2017-12-20 06:49:59', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('125', 'Philippines', '157.52.156.49', '2017-12-20 07:02:50', 'http://www.ceek.jp/?rands=_87203252965238302549952', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('126', 'Philippines', '200.98.66.51', '2017-12-20 12:04:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('127', 'Philippines', '142.252.251.228', '2017-12-20 13:19:18', 'http://www.sogou.com/?rands=_1523087601847706370424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('128', 'Philippines', '142.252.251.228', '2017-12-20 13:19:18', 'http://www.so.com/?rands=_688019281610512841153548', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('129', 'Philippines', '142.252.251.228', '2017-12-20 13:19:19', 'http://www.baidu.com/?rands=_175811833805562811902236', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('130', 'Philippines', '155.94.88.18', '2017-12-20 14:06:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('131', 'Philippines', '47.203.91.61', '2017-12-20 14:42:55', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('132', 'Philippines', '27.148.157.56', '2017-12-20 15:32:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('133', 'Philippines', '60.191.38.77', '2017-12-20 18:16:49', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('134', 'Philippines', '157.52.156.49', '2017-12-20 20:45:10', 'http://www.ceek.jp/?rands=_9365760440912063379596', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('135', 'Philippines', '157.52.156.49', '2017-12-20 20:45:10', 'http://m.baidu.com/?rands=_1217511127862133540425808', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('136', 'Philippines', '142.252.251.228', '2017-12-20 22:38:32', 'http://www.baidu.com/?rands=_144693800016321443643568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('137', 'Philippines', '155.94.88.18', '2017-12-21 02:12:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('138', 'Philippines', '169.53.184.28', '2017-12-21 02:22:01', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('139', 'Philippines', '141.212.122.144', '2017-12-21 09:07:21', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('140', 'Philippines', '66.102.6.98', '2017-12-21 09:48:57', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('141', 'Philippines', '157.52.156.49', '2017-12-21 10:28:19', 'http://www.ceek.jp/?rands=_1114570016017560534979776', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('142', 'Philippines', '157.52.156.49', '2017-12-21 10:28:20', 'http://m.baidu.com/?rands=_13955789056491964512488', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('143', 'Philippines', '221.213.100.208', '2017-12-21 12:39:29', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('144', 'Philippines', '142.252.251.228', '2017-12-21 16:52:55', 'http://www.sogou.com/?rands=_1279698880011026804383936', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('145', 'Philippines', '142.252.251.228', '2017-12-21 16:52:56', 'http://www.so.com/?rands=_30008763841266330707388', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('146', 'Philippines', '157.52.156.49', '2017-12-22 00:07:58', 'http://www.ceek.jp/?rands=_83105410658636586423841342040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('147', 'Philippines', '157.52.156.49', '2017-12-22 00:07:58', 'http://m.baidu.com/?rands=_200316308661286586224208', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('148', 'Philippines', '139.59.133.235', '2017-12-22 00:09:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('149', 'Philippines', '142.252.251.228', '2017-12-22 02:16:36', 'http://www.sogou.com/?rands=_62374498481457469275264', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('150', 'Philippines', '142.252.251.228', '2017-12-22 02:16:37', 'http://www.baidu.com/?rands=_6845827445833381016484', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('151', 'Philippines', '142.252.251.228', '2017-12-22 02:16:37', 'http://www.so.com/?rands=_33277565608671982841328', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('152', 'Philippines', '93.174.95.106', '2017-12-22 06:53:53', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('153', 'Philippines', '216.69.191.98', '2017-12-22 10:42:12', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('154', 'Philippines', '60.191.40.196', '2017-12-22 10:49:59', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('155', 'Philippines', '60.191.40.196', '2017-12-22 11:06:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('156', 'Philippines', '142.252.251.228', '2017-12-22 11:12:57', 'http://www.sogou.com/?rands=_708859360444808692192', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('157', 'Philippines', '142.252.251.228', '2017-12-22 11:12:57', 'http://www.baidu.com/?rands=_1903550742166276438660', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('158', 'Philippines', '142.252.251.228', '2017-12-22 11:12:58', 'http://www.so.com/?rands=_401014939887078505027232', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('159', 'Philippines', '157.52.156.49', '2017-12-22 13:45:32', 'http://m.baidu.com/?rands=_95975932806983643166176', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('160', 'Philippines', '157.52.156.49', '2017-12-22 13:45:32', 'http://www.ceek.jp/?rands=_42284910361457940682452', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('161', 'Philippines', '139.162.119.197', '2017-12-22 14:08:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('162', 'Philippines', '36.235.199.115', '2017-12-22 14:56:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('163', 'Philippines', '141.212.122.160', '2017-12-22 15:38:34', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('164', 'Philippines', '66.240.205.34', '2017-12-22 17:32:40', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('165', 'Philippines', '139.162.111.98', '2017-12-22 19:20:10', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('166', 'Philippines', '60.191.38.77', '2017-12-22 21:13:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('167', 'Philippines', '104.236.178.50', '2017-12-22 23:42:22', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('168', 'Philippines', '157.52.156.49', '2017-12-23 03:29:28', 'http://www.ceek.jp/?rands=_9740536755671118001147316', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('169', 'Philippines', '142.252.251.228', '2017-12-23 05:57:08', 'http://www.baidu.com/?rands=_238842756024870693061872', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('170', 'Philippines', '142.252.251.228', '2017-12-23 05:57:08', 'http://www.sogou.com/?rands=_1523048686023619842172960', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('171', 'Philippines', '47.203.93.242', '2017-12-23 06:36:19', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('172', 'Philippines', '104.131.135.123', '2017-12-23 10:00:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('173', 'Philippines', '200.98.128.79', '2017-12-23 13:51:28', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('174', 'Philippines', '142.252.251.228', '2017-12-23 15:02:26', 'http://www.sogou.com/?rands=_16049743404504503112096', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('175', 'Philippines', '142.252.251.228', '2017-12-23 15:02:26', 'http://www.baidu.com/?rands=_71497378501673911116000', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('176', 'Philippines', '142.252.251.228', '2017-12-23 15:02:26', 'http://www.so.com/?rands=_1260010386925210734431564', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('177', 'Philippines', '185.110.132.232', '2017-12-23 16:07:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('178', 'Philippines', '157.52.156.49', '2017-12-23 17:08:29', 'http://m.baidu.com/?rands=_16216143734821972841629432', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('179', 'Philippines', '157.52.156.49', '2017-12-23 17:08:29', 'http://www.ceek.jp/?rands=_15490537600977697559312', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('180', 'Philippines', '127.0.0.1', '2017-12-23 20:48:26', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('181', 'Philippines', '107.170.230.250', '2017-12-23 21:19:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('182', 'Philippines', '142.252.251.228', '2017-12-24 00:28:50', 'http://www.so.com/?rands=_6963573503896064705120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('183', 'Philippines', '142.252.251.228', '2017-12-24 00:28:50', 'http://www.baidu.com/?rands=_5614214354810081506942368', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('184', 'Philippines', '109.236.82.210', '2017-12-24 02:28:48', 'http://azenv.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('185', 'Philippines', '66.102.6.214', '2017-12-24 03:42:57', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('186', 'Philippines', '60.191.38.77', '2017-12-24 04:35:28', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('187', 'Philippines', '196.52.43.57', '2017-12-24 05:08:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('188', 'Philippines', '60.191.38.77', '2017-12-24 12:51:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('189', 'Philippines', '71.6.158.166', '2017-12-24 14:41:22', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('190', 'Philippines', '196.52.43.64', '2017-12-24 15:12:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('191', 'Philippines', '157.52.156.49', '2017-12-24 20:29:42', 'http://m.baidu.com/?rands=_96452528012351362772280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('192', 'Philippines', '157.52.156.49', '2017-12-24 20:29:42', 'http://www.ceek.jp/?rands=_427521966018499802172100', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('193', 'Philippines', '104.236.188.251', '2017-12-24 23:11:34', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('194', 'Philippines', '104.236.142.172', '2017-12-24 23:12:16', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('195', 'Philippines', '104.236.180.87', '2017-12-24 23:12:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('196', 'Philippines', '164.132.91.1', '2017-12-25 02:15:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('197', 'Philippines', '139.162.108.53', '2017-12-25 04:34:17', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('198', 'Philippines', '172.104.108.109', '2017-12-25 06:17:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('199', 'Philippines', '157.52.156.49', '2017-12-25 10:05:19', 'http://www.ceek.jp/?rands=_9644877608822401980200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('200', 'Philippines', '142.252.251.228', '2017-12-25 12:27:29', 'http://www.baidu.com/?rands=_15761361430211770592496', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('201', 'Philippines', '142.252.251.228', '2017-12-25 12:27:30', 'http://www.so.com/?rands=_835539850057679808863012', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('202', 'Philippines', '71.6.167.142', '2017-12-25 12:35:59', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('203', 'Philippines', '209.126.136.4', '2017-12-25 19:45:46', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('204', 'Philippines', '201.81.91.226', '2017-12-25 21:15:16', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('205', 'Philippines', '201.81.91.226', '2017-12-25 21:15:29', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('206', 'Philippines', '142.252.251.228', '2017-12-25 21:57:42', 'http://www.sogou.com/?rands=_776749017611330282457804', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('207', 'Philippines', '142.252.251.228', '2017-12-25 21:57:42', 'http://www.so.com/?rands=_24069093844075502753008', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('208', 'Philippines', '142.252.251.228', '2017-12-25 21:57:42', 'http://www.baidu.com/?rands=_469878300818597602957160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('209', 'Philippines', '164.52.7.130', '2017-12-25 22:32:18', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('210', 'Philippines', '164.52.0.141', '2017-12-25 22:58:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('211', 'Philippines', '157.52.156.49', '2017-12-25 23:38:52', 'http://m.baidu.com/?rands=_63152055821717201497900', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('212', 'Philippines', '157.52.156.49', '2017-12-25 23:38:53', 'http://www.ceek.jp/?rands=_95326394701514491116000', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('213', 'Philippines', '66.102.6.216', '2017-12-26 00:26:21', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('214', 'Philippines', '217.237.117.11', '2017-12-26 06:56:01', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('215', 'Philippines', '142.252.251.228', '2017-12-26 06:56:22', 'http://www.sogou.com/?rands=_746132384013458123522816', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('216', 'Philippines', '142.252.251.228', '2017-12-26 06:56:23', 'http://www.so.com/?rands=_22508276961315035707388', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('217', 'Philippines', '142.252.251.228', '2017-12-26 06:56:23', 'http://www.baidu.com/?rands=_4551119165218611164152424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('218', 'Philippines', '208.100.26.230', '2017-12-26 12:16:19', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('219', 'Philippines', '208.100.26.230', '2017-12-26 12:18:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('220', 'Philippines', '158.85.81.123', '2017-12-26 13:08:05', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('221', 'Philippines', '157.52.156.49', '2017-12-26 13:23:52', 'http://www.ceek.jp/?rands=_1167081627019539961193696', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('222', 'Philippines', '157.52.156.49', '2017-12-26 13:23:52', 'http://m.baidu.com/?rands=_1137257616813982898300', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('223', 'Philippines', '142.252.251.228', '2017-12-26 16:10:13', 'http://www.so.com/?rands=_7260162705012902764080032', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('224', 'Philippines', '142.252.251.228', '2017-12-26 16:10:13', 'http://www.sogou.com/?rands=_251191198378858812064842128', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('225', 'Philippines', '142.252.251.228', '2017-12-26 16:10:14', 'http://www.baidu.com/?rands=_15761296600197652530128', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('226', 'Philippines', '139.162.111.98', '2017-12-26 22:37:57', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('227', 'Philippines', '104.236.180.87', '2017-12-26 23:26:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('228', 'Philippines', '141.212.122.32', '2017-12-27 01:13:59', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('229', 'Philippines', '5.189.164.176', '2017-12-27 01:32:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('230', 'Philippines', '157.52.156.49', '2017-12-27 03:02:02', 'http://m.baidu.com/?rands=_37506816321022805578772', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('231', 'Philippines', '157.52.156.49', '2017-12-27 03:02:02', 'http://www.ceek.jp/?rands=_65601588205729461733872', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('232', 'Philippines', '139.162.108.53', '2017-12-27 04:05:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('233', 'Philippines', '118.123.12.177', '2017-12-27 05:20:51', 'http://www.search.com/?rands=_770497725619351022227200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('234', 'Philippines', '118.123.12.177', '2017-12-27 05:20:51', 'http://www.baidu.com/?rands=_40923491281747602640464', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('235', 'Philippines', '142.252.251.228', '2017-12-27 10:07:21', 'http://www.so.com/?rands=_7260182229615053225100040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('236', 'Philippines', '142.252.251.228', '2017-12-27 10:07:22', 'http://www.baidu.com/?rands=_1710111692612353042323392', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('237', 'Philippines', '178.62.253.38', '2017-12-27 12:44:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('238', 'Philippines', '172.104.108.109', '2017-12-27 13:43:17', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('239', 'Philippines', '157.52.156.49', '2017-12-27 16:41:11', 'http://www.ceek.jp/?rands=_3000632944974100557336', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('240', 'Philippines', '157.52.156.49', '2017-12-27 16:41:11', 'http://m.baidu.com/?rands=_9365532308709382662712', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('241', 'Philippines', '188.163.23.37', '2017-12-27 18:22:21', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('242', 'Philippines', '142.252.251.228', '2017-12-27 19:11:51', 'http://www.baidu.com/?rands=_133821789619526253529412', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('243', 'Philippines', '142.252.251.228', '2017-12-27 19:11:51', 'http://www.sogou.com/?rands=_60819146761163268892308', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('244', 'Philippines', '139.162.79.87', '2017-12-28 01:56:50', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('245', 'Philippines', '142.252.251.228', '2017-12-28 04:25:55', 'http://www.sogou.com/?rands=_109266308661347852236664', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('246', 'Philippines', '142.252.251.228', '2017-12-28 04:25:56', 'http://www.baidu.com/?rands=_97368848021026075610612', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('247', 'Philippines', '142.252.251.228', '2017-12-28 04:25:56', 'http://www.so.com/?rands=_684050208042549544865504', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('248', 'Philippines', '157.52.156.49', '2017-12-28 06:20:23', 'http://www.ceek.jp/?rands=_11988177827041139154132964', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('249', 'Philippines', '157.52.156.49', '2017-12-28 06:20:23', 'http://m.baidu.com/?rands=_20519682204888531763048', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('250', 'Philippines', '185.35.63.35', '2017-12-28 11:57:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('251', 'Philippines', '142.252.251.228', '2017-12-28 13:33:54', 'http://www.so.com/?rands=_7284304556673926120408', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('252', 'Philippines', '142.252.251.228', '2017-12-28 13:33:54', 'http://www.sogou.com/?rands=_4351939902191536399568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('253', 'Philippines', '142.252.251.228', '2017-12-28 13:33:55', 'http://www.baidu.com/?rands=_561421435489009005984800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('254', 'Philippines', '139.162.108.53', '2017-12-28 14:29:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('255', 'Philippines', '157.52.156.49', '2017-12-28 19:56:18', 'http://m.baidu.com/?rands=_121759164121659420307528', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('256', 'Philippines', '157.52.156.49', '2017-12-28 19:57:34', 'http://www.ceek.jp/?rands=_16389456834980256166080', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('257', 'Philippines', '142.252.251.228', '2017-12-28 22:44:38', 'http://www.so.com/?rands=_8108111067815510241202676', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('258', 'Philippines', '142.252.251.228', '2017-12-28 22:44:38', 'http://www.sogou.com/?rands=_27910231785213417201237040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('259', 'Philippines', '139.162.111.98', '2017-12-28 23:58:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('260', 'Philippines', '34.214.122.76', '2017-12-29 01:10:06', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('261', 'Philippines', '187.38.164.220', '2017-12-29 03:25:42', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('262', 'Philippines', '187.38.164.220', '2017-12-29 03:26:02', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('263', 'Philippines', '61.164.253.230', '2017-12-29 05:48:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('264', 'Philippines', '85.159.215.181', '2017-12-29 07:21:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('265', 'Philippines', '142.252.251.228', '2017-12-29 07:30:59', 'http://www.so.com/?rands=_13450110994614151722569228', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('266', 'Philippines', '142.252.251.228', '2017-12-29 07:31:00', 'http://www.sogou.com/?rands=_5160149968849114943812', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('267', 'Philippines', '157.52.156.49', '2017-12-29 09:33:15', 'http://m.baidu.com/?rands=_2282470081592850321684', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('268', 'Philippines', '164.52.6.186', '2017-12-29 12:20:23', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('269', 'Philippines', '141.212.122.32', '2017-12-29 12:21:31', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('270', 'Philippines', '164.52.24.140', '2017-12-29 12:41:33', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('271', 'Philippines', '151.217.91.28', '2017-12-29 16:15:48', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('272', 'Philippines', '89.248.172.90', '2017-12-29 16:50:19', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('273', 'Philippines', '89.248.172.90', '2017-12-29 16:50:22', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('274', 'Philippines', '172.104.108.109', '2017-12-29 19:13:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('275', 'Philippines', '104.236.130.227', '2017-12-29 19:28:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('276', 'Philippines', '45.33.2.193', '2017-12-29 20:24:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('277', 'Philippines', '169.54.244.89', '2017-12-29 21:52:20', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('278', 'Philippines', '168.1.128.62', '2017-12-29 23:00:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('279', 'Philippines', '157.52.156.49', '2017-12-29 23:13:33', 'http://m.baidu.com/?rands=_1902470081529136818832', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('280', 'Philippines', '52.206.224.180', '2017-12-30 00:06:17', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('281', 'Philippines', '142.252.251.228', '2017-12-30 02:17:55', 'http://www.sogou.com/?rands=_439560636820076933622640', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('282', 'Philippines', '142.252.251.228', '2017-12-30 02:17:55', 'http://www.baidu.com/?rands=_1198838301212961652249588', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('283', 'Philippines', '104.236.186.72', '2017-12-30 02:55:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('284', 'Philippines', '148.72.168.39', '2017-12-30 03:30:02', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('285', 'Philippines', '198.143.155.138', '2017-12-30 06:03:23', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('286', 'Philippines', '185.110.132.232', '2017-12-30 09:10:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('287', 'Philippines', '139.162.79.87', '2017-12-30 09:18:30', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('288', 'Philippines', '142.234.115.155', '2017-12-30 10:59:31', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('289', 'Philippines', '142.252.251.228', '2017-12-30 11:45:19', 'http://www.sogou.com/?rands=_4351633601866864352560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('290', 'Philippines', '142.252.251.228', '2017-12-30 11:45:19', 'http://www.baidu.com/?rands=_342028242023124752693404', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('291', 'Philippines', '157.52.156.49', '2017-12-30 12:49:48', 'http://m.baidu.com/?rands=_75227627643535707617360', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('292', 'Philippines', '157.52.156.49', '2017-12-30 12:49:49', 'http://www.ceek.jp/?rands=_50521897681631341497900', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('293', 'Philippines', '172.241.151.27', '2017-12-30 13:32:26', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('294', 'Philippines', '222.186.50.187', '2017-12-30 14:21:50', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('295', 'Philippines', '172.241.151.27', '2017-12-30 14:30:27', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('296', 'Philippines', '172.241.151.27', '2017-12-30 14:30:27', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('297', 'Philippines', '221.229.204.182', '2017-12-30 16:29:44', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('298', 'Philippines', '142.252.251.228', '2017-12-30 21:03:39', 'http://www.baidu.com/?rands=_256532949027749703301592', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('299', 'Philippines', '142.252.251.228', '2017-12-30 21:03:39', 'http://www.sogou.com/?rands=_1035646294410491002537088', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('300', 'Philippines', '142.252.251.228', '2017-12-30 21:03:40', 'http://www.so.com/?rands=_41750312014017383740408', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('301', 'Philippines', '172.241.151.28', '2017-12-31 01:05:35', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('302', 'Philippines', '74.115.214.145', '2017-12-31 01:37:42', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('303', 'Philippines', '157.52.156.49', '2017-12-31 02:23:38', 'http://m.baidu.com/?rands=_83450312015095643960432', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('304', 'Philippines', '142.252.251.228', '2017-12-31 06:23:39', 'http://www.sogou.com/?rands=_11556119442424560912992800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('305', 'Philippines', '142.252.251.228', '2017-12-31 06:23:40', 'http://www.so.com/?rands=_120578792013674723089112', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('306', 'Philippines', '142.252.251.228', '2017-12-31 06:23:40', 'http://www.baidu.com/?rands=_5025473044573812091024', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('307', 'Philippines', '93.190.138.107', '2017-12-31 12:30:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('308', 'Philippines', '221.229.166.38', '2017-12-31 13:27:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('309', 'Philippines', '221.229.166.38', '2017-12-31 13:27:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('310', 'Philippines', '142.252.251.228', '2017-12-31 15:37:16', 'http://www.so.com/?rands=_31521880070317655888744', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('311', 'Philippines', '157.52.156.49', '2017-12-31 16:00:33', 'http://m.baidu.com/?rands=_123925376001117368688384', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('312', 'Philippines', '200.98.173.136', '2017-12-31 17:41:59', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('313', 'Philippines', '200.98.129.123', '2017-12-31 19:03:25', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('314', 'Philippines', '23.253.67.128', '2017-12-31 22:00:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('315', 'Philippines', '142.252.251.228', '2018-01-01 00:41:43', 'http://www.sogou.com/?rands=_65403252964686902337456', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('316', 'Philippines', '142.252.251.228', '2018-01-01 00:41:43', 'http://www.so.com/?rands=_297027907236313565561280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('317', 'Philippines', '142.252.251.228', '2018-01-01 00:41:43', 'http://www.baidu.com/?rands=_88414744203863703415212', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('318', 'Philippines', '181.215.154.230', '2018-01-01 00:57:17', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('319', 'Philippines', '13.57.210.5', '2018-01-01 01:28:17', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('320', 'Philippines', '93.190.138.107', '2018-01-01 07:49:25', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('321', 'Philippines', '172.104.108.109', '2018-01-01 09:28:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('322', 'Philippines', '74.115.214.134', '2018-01-01 18:40:38', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('323', 'Philippines', '142.252.251.228', '2018-01-01 19:09:52', 'http://www.so.com/?rands=_5790107386420822675272680', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('324', 'Philippines', '142.252.251.228', '2018-01-01 19:09:53', 'http://www.sogou.com/?rands=_75784586063949563295380', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('325', 'Philippines', '157.52.156.49', '2018-01-01 19:20:59', 'http://m.baidu.com/?rands=_95326886601833331294560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('326', 'Philippines', '157.52.156.49', '2018-01-01 19:20:59', 'http://www.ceek.jp/?rands=_1472015526017558102298456', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('327', 'Philippines', '222.186.138.74', '2018-01-01 19:56:37', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('328', 'Philippines', '172.241.151.27', '2018-01-01 20:40:54', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('329', 'Philippines', '173.255.204.58', '2018-01-01 21:10:52', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('330', 'Philippines', '93.190.138.107', '2018-01-01 21:40:42', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('331', 'Philippines', '203.77.241.10', '2018-01-01 21:42:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('332', 'Philippines', '31.41.68.30', '2018-01-02 00:14:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('333', 'Philippines', '31.41.68.30', '2018-01-02 00:14:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('334', 'Philippines', '172.241.151.28', '2018-01-02 01:14:51', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('335', 'Philippines', '70.175.174.151', '2018-01-02 01:37:14', 'http://www.baidu.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('336', 'Philippines', '200.98.141.150', '2018-01-02 02:04:55', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('337', 'Philippines', '88.250.146.236', '2018-01-02 02:05:33', 'http://www.ismailkundakci.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('338', 'Philippines', '121.54.54.51', '2018-01-02 02:24:31', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('339', 'Philippines', '121.54.54.51', '2018-01-02 02:24:56', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('340', 'Philippines', '66.220.156.19', '2018-01-02 02:25:29', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('341', 'Philippines', '112.207.248.129', '2018-01-02 02:29:38', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('342', 'Philippines', '112.207.248.129', '2018-01-02 02:29:47', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('343', 'Philippines', '88.250.146.236', '2018-01-02 03:35:49', 'http://www.ismailkundakci.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('344', 'Philippines', '172.241.151.27', '2018-01-02 03:50:08', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('345', 'Philippines', '142.252.251.228', '2018-01-02 04:23:10', 'http://www.sogou.com/?rands=_116974144409881401878036', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('346', 'Philippines', '142.252.251.228', '2018-01-02 04:23:11', 'http://www.baidu.com/?rands=_159951137120452098816074432', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('347', 'Philippines', '142.252.251.228', '2018-01-02 04:23:11', 'http://www.so.com/?rands=_5608177922815938011262820', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('348', 'Philippines', '157.52.156.49', '2018-01-02 08:57:49', 'http://www.ceek.jp/?rands=_3288260719274454639799664', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('349', 'Philippines', '157.52.156.49', '2018-01-02 08:57:49', 'http://m.baidu.com/?rands=_8355223160482580889596', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('350', 'Philippines', '139.162.79.87', '2018-01-02 11:26:16', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('351', 'Philippines', '142.252.251.228', '2018-01-02 13:31:26', 'http://www.baidu.com/?rands=_63153479082747522456556', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('352', 'Philippines', '142.252.251.228', '2018-01-02 13:31:26', 'http://www.so.com/?rands=_17058110429891524869144', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('353', 'Philippines', '142.252.251.228', '2018-01-02 13:31:27', 'http://www.sogou.com/?rands=_23641231770218829623680', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('354', 'Philippines', '164.132.91.1', '2018-01-02 20:09:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('355', 'Philippines', '164.15.35.74', '2018-01-02 20:52:36', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('356', 'Philippines', '157.52.156.49', '2018-01-02 22:39:39', 'http://m.baidu.com/?rands=_783078300826346603942880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('357', 'Philippines', '142.252.251.228', '2018-01-02 22:48:43', 'http://www.sogou.com/?rands=_10632917388658950128640', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('358', 'Philippines', '142.252.251.228', '2018-01-02 22:48:44', 'http://www.so.com/?rands=_6093063004545408846144', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('359', 'Philippines', '142.234.115.155', '2018-01-02 22:55:40', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('360', 'Philippines', '112.207.248.129', '2018-01-03 01:45:36', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('361', 'Philippines', '89.248.172.90', '2018-01-03 03:25:57', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('362', 'Philippines', '141.212.122.144', '2018-01-03 05:18:10', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('363', 'Philippines', '74.115.214.147', '2018-01-03 07:40:55', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('364', 'Philippines', '142.252.251.228', '2018-01-03 07:43:42', 'http://www.so.com/?rands=_43253242268301557433212168576', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('365', 'Philippines', '112.207.248.129', '2018-01-03 08:17:16', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('366', 'Philippines', '112.207.248.129', '2018-01-03 08:17:42', 'http://ssmcgroup.ph/HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('367', 'Philippines', '209.126.136.4', '2018-01-03 09:09:36', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('368', 'Philippines', '179.105.91.134', '2018-01-03 11:12:37', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('369', 'Philippines', '172.104.108.109', '2018-01-03 13:58:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('370', 'Philippines', '60.191.38.78', '2018-01-03 14:54:50', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('371', 'Philippines', '142.234.115.155', '2018-01-03 15:19:23', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('372', 'Philippines', '139.162.111.98', '2018-01-03 16:10:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('373', 'Philippines', '142.252.251.228', '2018-01-03 16:53:08', 'http://www.baidu.com/?rands=_15995108768011761924871040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('374', 'Philippines', '164.52.6.186', '2018-01-03 18:35:20', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('375', 'Philippines', '5.188.87.7', '2018-01-04 00:15:06', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('376', 'Philippines', '89.248.172.90', '2018-01-04 01:42:53', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('377', 'Philippines', '157.52.156.49', '2018-01-04 02:02:13', 'http://www.ceek.jp/?rands=_2282933221975134399668', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('378', 'Philippines', '142.252.251.228', '2018-01-04 02:11:59', 'http://www.sogou.com/?rands=_4632112267621453665523760', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('379', 'Philippines', '142.252.251.228', '2018-01-04 02:11:59', 'http://www.so.com/?rands=_191941690864225768924176', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('380', 'Philippines', '139.162.108.53', '2018-01-04 04:32:34', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('381', 'Philippines', '103.99.3.12', '2018-01-04 05:38:25', 'http://www.google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('382', 'Philippines', '103.99.3.12', '2018-01-04 05:39:50', 'http://www.google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('383', 'Philippines', '103.99.3.12', '2018-01-04 05:46:33', 'http://www.google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('384', 'Philippines', '103.99.3.12', '2018-01-04 05:48:13', 'http://www.google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('385', 'Philippines', '1.55.178.153', '2018-01-04 06:05:52', 'http://google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('386', 'Philippines', '1.55.178.153', '2018-01-04 06:06:11', 'http://google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('387', 'Philippines', '35.201.234.58', '2018-01-04 06:37:24', 'http://www.google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('388', 'Philippines', '35.201.234.58', '2018-01-04 06:39:11', 'http://www.google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('389', 'Philippines', '35.201.234.58', '2018-01-04 06:39:19', 'http://www.google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('390', 'Philippines', '1.55.178.153', '2018-01-04 08:17:34', 'http://google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('391', 'Philippines', '1.55.178.153', '2018-01-04 08:18:10', 'http://google.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('392', 'Philippines', '169.54.244.84', '2018-01-04 09:21:13', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('393', 'Philippines', '93.174.93.38', '2018-01-04 10:39:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('394', 'Philippines', '142.252.251.228', '2018-01-04 10:46:41', 'http://www.sogou.com/?rands=_427536087034224634083548', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('395', 'Philippines', '142.252.251.228', '2018-01-04 10:46:41', 'http://www.so.com/?rands=_22393118656014702406332352', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('396', 'Philippines', '185.35.63.76', '2018-01-04 12:14:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('397', 'Philippines', '157.52.156.49', '2018-01-04 15:40:11', 'http://www.ceek.jp/?rands=_1268016446015920373362880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('398', 'Philippines', '157.52.156.49', '2018-01-04 15:40:11', 'http://m.baidu.com/?rands=_1523030982014762401466748', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('399', 'Philippines', '66.240.205.34', '2018-01-04 22:44:33', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('400', 'Philippines', '93.174.93.38', '2018-01-05 00:02:59', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('401', 'Philippines', '74.115.214.141', '2018-01-05 02:09:44', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('402', 'Philippines', '212.83.146.233', '2018-01-05 03:17:48', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('403', 'Philippines', '142.252.251.228', '2018-01-05 05:14:23', 'http://www.so.com/?rands=_1032026780014556241573020', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('404', 'Philippines', '142.252.251.228', '2018-01-05 05:14:23', 'http://www.baidu.com/?rands=_4352348302840880552344', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('405', 'Philippines', '142.252.251.228', '2018-01-05 05:14:24', 'http://www.sogou.com/?rands=_573669498034733163084400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('406', 'Philippines', '157.52.156.49', '2018-01-05 05:20:47', 'http://www.ceek.jp/?rands=_592553970416539121646984', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('407', 'Philippines', '172.104.108.109', '2018-01-05 09:34:30', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('408', 'Philippines', '141.212.122.48', '2018-01-05 10:48:46', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('409', 'Philippines', '66.70.202.37', '2018-01-05 12:21:37', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('410', 'Philippines', '113.128.105.102', '2018-01-05 12:26:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('411', 'Philippines', '95.215.60.147', '2018-01-05 14:12:05', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('412', 'Philippines', '142.252.251.228', '2018-01-05 14:18:06', 'http://www.so.com/?rands=_106402492741754496319520', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('413', 'Philippines', '142.252.251.228', '2018-01-05 14:18:07', 'http://www.baidu.com/?rands=_312246692034366206489564', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('414', 'Philippines', '142.252.251.228', '2018-01-05 14:18:07', 'http://www.sogou.com/?rands=_8470208262416486865378224', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('415', 'Philippines', '210.47.10.162', '2018-01-05 15:17:06', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('416', 'Philippines', '74.115.214.131', '2018-01-05 15:20:42', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('417', 'Philippines', '157.52.156.49', '2018-01-05 19:02:44', 'http://www.ceek.jp/?rands=_561410392965148003590880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('418', 'Philippines', '157.52.156.49', '2018-01-05 19:02:45', 'http://m.baidu.com/?rands=_54563759842038869815136', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('419', 'Philippines', '118.123.12.177', '2018-01-05 19:09:33', 'http://www.baidu.com/?rands=_37891581401287901198320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('420', 'Philippines', '118.123.12.177', '2018-01-05 19:09:33', 'http://www.search.com/?rands=_516096408566076664164', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('421', 'Philippines', '118.123.12.177', '2018-01-05 19:09:36', 'http://www.so.com/?rands=_48578477049042301512480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('422', 'Philippines', '82.221.105.6', '2018-01-05 19:37:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('423', 'Philippines', '89.248.172.90', '2018-01-05 22:41:58', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('424', 'Philippines', '89.248.172.16', '2018-01-05 23:25:59', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('425', 'Philippines', '142.252.251.228', '2018-01-05 23:36:06', 'http://www.so.com/?rands=_16338152370436415382174232', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('426', 'Philippines', '142.252.251.228', '2018-01-05 23:36:07', 'http://www.baidu.com/?rands=_4543120467226912763082160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('427', 'Philippines', '142.252.251.228', '2018-01-05 23:36:07', 'http://www.sogou.com/?rands=_84786920967471321867200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('428', 'Philippines', '60.191.38.78', '2018-01-06 02:16:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('429', 'Philippines', '47.203.88.191', '2018-01-06 03:35:22', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('430', 'Philippines', '172.104.108.109', '2018-01-06 04:45:42', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('431', 'Philippines', '210.47.10.162', '2018-01-06 08:16:19', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('432', 'Philippines', '142.252.251.228', '2018-01-06 08:18:40', 'http://www.so.com/?rands=_1448040795023154603657280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('433', 'Philippines', '142.252.251.228', '2018-01-06 08:18:40', 'http://www.sogou.com/?rands=_918431764011719353591592', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('434', 'Philippines', '142.252.251.228', '2018-01-06 08:18:40', 'http://www.baidu.com/?rands=_124743855841345356269280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('435', 'Philippines', '157.52.156.49', '2018-01-06 08:42:29', 'http://www.ceek.jp/?rands=_2662933221783992360676', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('436', 'Philippines', '157.52.156.49', '2018-01-06 08:42:29', 'http://m.baidu.com/?rands=_579068336813250793389580', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('437', 'Philippines', '112.207.248.129', '2018-01-06 09:46:28', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('438', 'Philippines', '139.162.114.70', '2018-01-06 11:18:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('439', 'Philippines', '203.41.204.50', '2018-01-06 17:11:24', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('440', 'Philippines', '142.252.251.228', '2018-01-06 17:17:21', 'http://www.so.com/?rands=_65602435248854622662732', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('441', 'Philippines', '142.252.251.228', '2018-01-06 17:17:21', 'http://www.baidu.com/?rands=_1218444260022881722172960', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('442', 'Philippines', '142.252.251.228', '2018-01-06 17:17:22', 'http://www.sogou.com/?rands=_298544893827443523487132', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('443', 'Philippines', '85.25.117.53', '2018-01-06 18:52:11', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('444', 'Philippines', '45.123.190.147', '2018-01-06 20:31:07', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('445', 'Philippines', '45.123.190.147', '2018-01-06 20:36:04', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('446', 'Philippines', '142.252.251.228', '2018-01-07 02:28:10', 'http://www.sogou.com/?rands=_1461018982823555900686024', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('447', 'Philippines', '142.252.251.228', '2018-01-07 02:28:11', 'http://www.baidu.com/?rands=_1775231795630456366501568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('448', 'Philippines', '157.52.156.49', '2018-01-07 02:46:54', 'http://m.baidu.com/?rands=_157507106843666812874528', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('449', 'Philippines', '157.52.156.49', '2018-01-07 02:46:54', 'http://www.ceek.jp/?rands=_223017120413277852390892', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('450', 'Philippines', '89.248.172.90', '2018-01-07 04:56:04', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('451', 'Philippines', '142.252.251.228', '2018-01-07 11:10:46', 'http://www.baidu.com/?rands=_561414939887293005146928', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('452', 'Philippines', '142.252.251.228', '2018-01-07 11:10:46', 'http://www.so.com/?rands=_9336108836027533581705280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('453', 'Philippines', '142.252.251.228', '2018-01-07 11:10:46', 'http://www.sogou.com/?rands=_185888832001536381903504', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('454', 'Philippines', '157.52.156.49', '2018-01-07 15:56:31', 'http://m.baidu.com/?rands=_8478367676389808995840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('455', 'Philippines', '157.52.156.49', '2018-01-07 15:56:31', 'http://www.ceek.jp/?rands=_1382588315224808682363064', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('456', 'Philippines', '189.34.230.86', '2018-01-07 19:40:16', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('457', 'Philippines', '142.252.251.228', '2018-01-07 20:19:17', 'http://www.so.com/?rands=_1668114265103586952544480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('458', 'Philippines', '142.252.251.228', '2018-01-07 20:19:17', 'http://www.baidu.com/?rands=_4500131457620943151200416', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('459', 'Philippines', '142.252.251.228', '2018-01-07 20:19:18', 'http://www.sogou.com/?rands=_9102108332018611163862720', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('460', 'Philippines', '139.162.79.87', '2018-01-07 20:24:57', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('461', 'Philippines', '200.98.139.188', '2018-01-07 21:15:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('462', 'Philippines', '39.104.68.70', '2018-01-07 21:29:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('463', 'Philippines', '172.104.108.109', '2018-01-07 22:12:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('464', 'Philippines', '42.51.209.64', '2018-01-07 22:34:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('465', 'Philippines', '139.162.114.70', '2018-01-07 22:44:40', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('466', 'Philippines', '63.246.129.188', '2018-01-07 23:08:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('467', 'Philippines', '200.98.139.188', '2018-01-07 23:36:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('468', 'Philippines', '157.52.156.49', '2018-01-08 05:03:24', 'http://m.baidu.com/?rands=_606864999211406842414200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('469', 'Philippines', '157.52.156.49', '2018-01-08 05:03:24', 'http://www.ceek.jp/?rands=_10395208858784791161568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('470', 'Philippines', '142.252.251.228', '2018-01-08 05:29:08', 'http://www.so.com/?rands=_477661996238592454933016', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('471', 'Philippines', '142.252.251.228', '2018-01-08 05:29:08', 'http://www.baidu.com/?rands=_2027248954029770204820960', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('472', 'Philippines', '89.248.172.90', '2018-01-08 07:10:30', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('473', 'Philippines', '139.162.111.98', '2018-01-08 08:49:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('474', 'Philippines', '45.123.190.147', '2018-01-08 09:39:34', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('475', 'Philippines', '45.123.190.147', '2018-01-08 09:40:33', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('476', 'Philippines', '169.229.3.90', '2018-01-08 11:00:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('477', 'Philippines', '142.252.251.228', '2018-01-08 14:36:16', 'http://www.sogou.com/?rands=_2394140829815441302807432', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('478', 'Philippines', '142.252.251.228', '2018-01-08 14:36:16', 'http://www.baidu.com/?rands=_1737635899621169923324800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('479', 'Philippines', '200.98.139.188', '2018-01-08 15:06:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('480', 'Philippines', '200.98.139.188', '2018-01-08 17:53:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('481', 'Philippines', '157.52.156.49', '2018-01-08 18:16:32', 'http://m.baidu.com/?rands=_54563491281941780756912', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('482', 'Philippines', '157.52.156.49', '2018-01-08 18:16:32', 'http://www.ceek.jp/?rands=_9365456264608042457888', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('483', 'Philippines', '45.55.6.11', '2018-01-08 18:43:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('484', 'Philippines', '200.98.139.188', '2018-01-08 19:46:07', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('485', 'Philippines', '209.126.136.4', '2018-01-08 20:04:56', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('486', 'Philippines', '42.51.209.64', '2018-01-08 20:09:10', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('487', 'Philippines', '200.98.139.188', '2018-01-08 22:21:41', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('488', 'Philippines', '142.252.251.228', '2018-01-08 23:41:52', 'http://www.baidu.com/?rands=_205116674907922792783760', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('489', 'Philippines', '142.252.251.228', '2018-01-08 23:41:52', 'http://www.so.com/?rands=_127476091121347852236664', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('490', 'Philippines', '142.252.251.228', '2018-01-08 23:41:52', 'http://www.sogou.com/?rands=_1812384419219303444598472', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('491', 'Philippines', '164.52.6.186', '2018-01-09 00:34:07', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('492', 'Philippines', '200.98.139.188', '2018-01-09 02:42:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('493', 'Philippines', '139.162.79.87', '2018-01-09 02:52:23', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('494', 'Philippines', '164.52.24.140', '2018-01-09 04:57:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('495', 'Philippines', '200.98.139.188', '2018-01-09 05:25:46', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('496', 'Philippines', '104.131.137.64', '2018-01-09 05:41:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('497', 'Philippines', '45.55.3.84', '2018-01-09 05:41:15', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('498', 'Philippines', '104.236.176.154', '2018-01-09 05:43:42', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('499', 'Philippines', '157.52.156.49', '2018-01-09 07:29:01', 'http://www.ceek.jp/?rands=_13686798686862801258504', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('500', 'Philippines', '112.30.132.137', '2018-01-09 07:59:16', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('501', 'Philippines', '164.132.91.1', '2018-01-09 08:24:27', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('502', 'Philippines', '142.252.251.228', '2018-01-09 08:34:42', 'http://www.sogou.com/?rands=_83458256017252164620504', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('503', 'Philippines', '142.252.251.228', '2018-01-09 08:34:42', 'http://www.so.com/?rands=_573666825028944302467520', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('504', 'Philippines', '5.188.87.7', '2018-01-09 09:10:47', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('505', 'Philippines', '80.82.77.139', '2018-01-09 09:55:20', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('506', 'Philippines', '118.123.12.177', '2018-01-09 12:07:00', 'http://www.search.com/?rands=_95976921606983642922624', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('507', 'Philippines', '118.123.12.177', '2018-01-09 12:07:01', 'http://www.so.com/?rands=_50522213961631341437984', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('508', 'Philippines', '118.123.12.177', '2018-01-09 12:07:01', 'http://www.baidu.com/?rands=_79142200608912701625760', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('509', 'Philippines', '45.123.190.147', '2018-01-09 13:20:13', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('510', 'Philippines', '45.123.190.147', '2018-01-09 13:26:52', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('511', 'Philippines', '5.23.48.168', '2018-01-09 13:55:57', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('512', 'Philippines', '85.25.117.53', '2018-01-09 14:37:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('513', 'Philippines', '139.162.111.98', '2018-01-09 15:22:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('514', 'Philippines', '89.248.172.90', '2018-01-09 16:24:59', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('515', 'Philippines', '142.252.251.228', '2018-01-09 17:39:52', 'http://www.sogou.com/?rands=_420612939841093785835404', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('516', 'Philippines', '142.252.251.228', '2018-01-09 17:39:52', 'http://www.baidu.com/?rands=_1526084034812957906481128', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('517', 'Philippines', '142.252.251.228', '2018-01-09 17:39:52', 'http://www.so.com/?rands=_1766435488038460604937424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('518', 'Philippines', '157.52.156.49', '2018-01-09 20:41:47', 'http://m.baidu.com/?rands=_1055226407211883605934024', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('519', 'Philippines', '158.85.81.125', '2018-01-09 22:56:56', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('520', 'Philippines', '5.188.87.7', '2018-01-10 00:31:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('521', 'Philippines', '172.241.151.28', '2018-01-10 01:34:14', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('522', 'Philippines', '142.252.251.228', '2018-01-10 02:50:37', 'http://www.baidu.com/?rands=_127684335203015540559160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('523', 'Philippines', '142.252.251.228', '2018-01-10 02:50:37', 'http://www.sogou.com/?rands=_247520672029624224634400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('524', 'Philippines', '168.1.128.34', '2018-01-10 03:09:47', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('525', 'Philippines', '36.5.182.84', '2018-01-10 04:45:22', 'http://www.123cha.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('526', 'Philippines', '123.160.233.201', '2018-01-10 04:45:25', 'http://www.minghui.org/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('527', 'Philippines', '101.24.130.217', '2018-01-10 04:45:27', 'http://www.epochtimes.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('528', 'Philippines', '124.88.64.212', '2018-01-10 04:45:29', 'http://www.wujieliulan.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('529', 'Philippines', '49.144.194.36', '2018-01-10 06:12:31', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('530', 'Philippines', '157.52.156.49', '2018-01-10 09:56:58', 'http://m.baidu.com/?rands=_8316208858747420149600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('531', 'Philippines', '157.52.156.49', '2018-01-10 09:56:58', 'http://www.ceek.jp/?rands=_1553449017611330283092076', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('532', 'Philippines', '114.67.224.210', '2018-01-10 10:56:27', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('533', 'Philippines', '142.252.251.228', '2018-01-10 11:48:41', 'http://www.so.com/?rands=_1521625217223534464820128', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('534', 'Philippines', '142.252.251.228', '2018-01-10 11:48:41', 'http://www.sogou.com/?rands=_478061479027290342299280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('535', 'Philippines', '142.252.251.228', '2018-01-10 11:48:42', 'http://www.baidu.com/?rands=_17720917388645771130784', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('536', 'Philippines', '178.73.215.171', '2018-01-10 11:54:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('537', 'Philippines', '66.249.82.70', '2018-01-10 12:36:43', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('538', 'Philippines', '66.249.82.72', '2018-01-10 12:36:52', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('539', 'Philippines', '66.249.82.74', '2018-01-10 12:37:17', 'http://ssmcgroup.ph/Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('540', 'Philippines', '66.249.82.70', '2018-01-10 12:37:24', 'http://ssmcgroup.ph/Medical-Services?page=1', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('541', 'Philippines', '66.249.82.74', '2018-01-10 12:37:31', 'http://ssmcgroup.ph/Welcome', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('542', 'Philippines', '66.249.82.70', '2018-01-10 12:37:33', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('543', 'Philippines', '66.249.82.72', '2018-01-10 12:37:51', 'http://ssmcgroup.ph/Medical-Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('544', 'Philippines', '66.249.82.74', '2018-01-10 12:38:03', 'http://ssmcgroup.ph/Medical-Services?page=1', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('545', 'Philippines', '66.249.82.70', '2018-01-10 12:38:11', 'http://ssmcgroup.ph/Medical-Services?page=0', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('546', 'Philippines', '34.229.85.131', '2018-01-10 14:53:22', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('547', 'Philippines', '139.162.108.53', '2018-01-10 17:26:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('548', 'Philippines', '185.100.87.245', '2018-01-10 19:28:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('549', 'Philippines', '185.100.87.245', '2018-01-10 19:30:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('550', 'Philippines', '185.100.87.245', '2018-01-10 19:30:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('551', 'Philippines', '185.100.87.245', '2018-01-10 19:30:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('552', 'Philippines', '142.252.251.228', '2018-01-10 21:04:34', 'http://www.baidu.com/?rands=_2284477022867130575132', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('553', 'Philippines', '142.252.251.228', '2018-01-10 21:04:35', 'http://www.so.com/?rands=_783092982222472103745736', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('554', 'Philippines', '142.252.251.228', '2018-01-10 21:04:35', 'http://www.sogou.com/?rands=_23340163254039968102430024', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('555', 'Philippines', '45.123.190.147', '2018-01-10 21:37:30', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('556', 'Philippines', '45.123.190.147', '2018-01-10 21:41:22', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('557', 'Philippines', '217.172.183.177', '2018-01-10 23:08:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('558', 'Philippines', '157.52.156.49', '2018-01-10 23:12:20', 'http://www.ceek.jp/?rands=_8355223160482580889596', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('559', 'Philippines', '157.52.156.49', '2018-01-10 23:12:20', 'http://m.baidu.com/?rands=_66872188006754052056864', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('560', 'Philippines', '141.212.122.16', '2018-01-10 23:31:02', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('561', 'Philippines', '89.248.172.90', '2018-01-11 01:13:43', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('562', 'Philippines', '89.248.172.90', '2018-01-11 01:13:44', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('563', 'Philippines', '192.99.133.147', '2018-01-11 01:41:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('564', 'Philippines', '172.104.108.109', '2018-01-11 02:01:24', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('565', 'Philippines', '142.252.251.228', '2018-01-11 06:09:15', 'http://www.sogou.com/?rands=_37937626924701204039216374640', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('566', 'Philippines', '142.252.251.228', '2018-01-11 06:09:15', 'http://www.baidu.com/?rands=_7763145908019169646794480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('567', 'Philippines', '142.252.251.228', '2018-01-11 06:09:16', 'http://www.so.com/?rands=_93657224181182304813364', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('568', 'Philippines', '72.14.176.218', '2018-01-11 07:34:19', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('569', 'Philippines', '142.234.115.154', '2018-01-11 09:29:32', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('570', 'Philippines', '142.234.115.154', '2018-01-11 09:29:33', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('571', 'Philippines', '47.203.88.191', '2018-01-11 09:46:28', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('572', 'Philippines', '142.252.251.228', '2018-01-11 15:14:37', 'http://www.baidu.com/?rands=_4020430040555302149108', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('573', 'Philippines', '142.252.251.228', '2018-01-11 15:14:37', 'http://www.so.com/?rands=_15216219280602205310873312', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('574', 'Philippines', '142.252.251.228', '2018-01-11 15:14:37', 'http://www.sogou.com/?rands=_2664322642675988555636', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('575', 'Philippines', '58.218.204.163', '2018-01-11 16:21:04', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('576', 'Philippines', '96.91.204.122', '2018-01-11 18:31:07', 'http://138.197.15.53//', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('577', 'Philippines', '220.118.72.87', '2018-01-11 19:00:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('578', 'Philippines', '220.118.72.87', '2018-01-11 19:00:48', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('579', 'Philippines', '139.162.79.87', '2018-01-11 23:40:28', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('580', 'Philippines', '142.252.251.228', '2018-01-12 00:26:52', 'http://www.so.com/?rands=_83162891881083759221408', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('581', 'Philippines', '142.252.251.228', '2018-01-12 00:26:52', 'http://www.baidu.com/?rands=_23949323904802947618877560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('582', 'Philippines', '142.252.251.228', '2018-01-12 00:26:52', 'http://www.sogou.com/?rands=_5790122030023977626151460', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('583', 'Philippines', '104.236.170.250', '2018-01-12 00:50:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('584', 'Philippines', '157.52.156.49', '2018-01-12 01:41:57', 'http://www.ceek.jp/?rands=_3505646992562518466272', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('585', 'Philippines', '45.123.190.147', '2018-01-12 02:36:01', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('586', 'Philippines', '45.123.190.147', '2018-01-12 02:36:04', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('587', 'Philippines', '47.75.13.106', '2018-01-12 03:10:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('588', 'Philippines', '218.27.68.166', '2018-01-12 03:17:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('589', 'Philippines', '148.72.168.40', '2018-01-12 03:22:51', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('590', 'Philippines', '114.46.41.164', '2018-01-12 06:53:19', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('591', 'Philippines', '114.46.41.164', '2018-01-12 06:53:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('592', 'Philippines', '58.218.204.202', '2018-01-12 07:50:37', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('593', 'Philippines', '177.32.65.10', '2018-01-12 08:06:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('594', 'Philippines', '177.32.65.10', '2018-01-12 08:06:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('595', 'Philippines', '47.75.13.106', '2018-01-12 08:44:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('596', 'Philippines', '142.252.251.228', '2018-01-12 09:21:29', 'http://www.sogou.com/?rands=_2205016947089070537186320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('597', 'Philippines', '142.252.251.228', '2018-01-12 09:21:30', 'http://www.so.com/?rands=_106403143022412432455316', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('598', 'Philippines', '5.2.165.160', '2018-01-12 10:19:16', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('599', 'Philippines', '5.2.165.160', '2018-01-12 10:19:17', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('600', 'Philippines', '35.168.1.28', '2018-01-12 11:06:15', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('601', 'Philippines', '47.203.88.202', '2018-01-12 11:52:16', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('602', 'Philippines', '138.197.8.188', '2018-01-12 13:33:46', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('603', 'Philippines', '151.12.36.211', '2018-01-12 14:49:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('604', 'Philippines', '151.12.36.211', '2018-01-12 14:49:15', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('605', 'Philippines', '157.52.156.49', '2018-01-12 14:53:59', 'http://www.ceek.jp/?rands=_933681627021316321321592', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('606', 'Philippines', '157.52.156.49', '2018-01-12 14:54:00', 'http://m.baidu.com/?rands=_1472015526018394202383584', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('607', 'Philippines', '141.212.122.16', '2018-01-12 14:55:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('608', 'Philippines', '207.253.239.98', '2018-01-12 15:27:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('609', 'Philippines', '207.253.239.98', '2018-01-12 15:27:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('610', 'Philippines', '199.241.200.90', '2018-01-12 15:42:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('611', 'Philippines', '199.241.200.90', '2018-01-12 15:42:15', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('612', 'Philippines', '195.142.114.138', '2018-01-12 16:22:16', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('613', 'Philippines', '195.142.114.138', '2018-01-12 16:22:17', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('614', 'Philippines', '85.7.43.201', '2018-01-12 16:32:59', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('615', 'Philippines', '85.7.43.201', '2018-01-12 16:33:20', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('616', 'Philippines', '138.68.85.102', '2018-01-12 16:41:05', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('617', 'Philippines', '138.68.85.102', '2018-01-12 16:41:05', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('618', 'Philippines', '74.207.253.60', '2018-01-12 17:46:50', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('619', 'Philippines', '104.236.138.252', '2018-01-12 18:02:08', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('620', 'Philippines', '104.236.134.136', '2018-01-12 18:02:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('621', 'Philippines', '104.236.177.70', '2018-01-12 18:02:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('622', 'Philippines', '104.236.190.204', '2018-01-12 18:04:08', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('623', 'Philippines', '104.236.180.94', '2018-01-12 18:06:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('624', 'Philippines', '45.55.57.160', '2018-01-12 18:36:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('625', 'Philippines', '45.55.57.160', '2018-01-12 18:36:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('626', 'Philippines', '120.77.81.194', '2018-01-12 21:29:59', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('627', 'Philippines', '185.93.226.90', '2018-01-12 21:49:24', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('628', 'Philippines', '139.162.119.197', '2018-01-13 01:24:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('629', 'Philippines', '42.51.32.99', '2018-01-13 03:03:33', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('630', 'Philippines', '142.252.251.228', '2018-01-13 03:36:34', 'http://www.sogou.com/?rands=_2736145686016127582952644', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('631', 'Philippines', '142.252.251.228', '2018-01-13 03:36:34', 'http://www.baidu.com/?rands=_91054785881041522174384', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('632', 'Philippines', '142.252.251.228', '2018-01-13 03:36:35', 'http://www.so.com/?rands=_2071287142420142724757040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('633', 'Philippines', '93.174.93.38', '2018-01-13 04:05:06', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('634', 'Philippines', '157.52.156.49', '2018-01-13 04:08:16', 'http://www.ceek.jp/?rands=_13687284307892221403716', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('635', 'Philippines', '157.52.156.49', '2018-01-13 04:08:16', 'http://m.baidu.com/?rands=_36121255442213312222300', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('636', 'Philippines', '183.57.38.114', '2018-01-13 04:11:27', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('637', 'Philippines', '45.123.190.147', '2018-01-13 04:37:00', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('638', 'Philippines', '74.115.214.148', '2018-01-13 12:00:32', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('639', 'Philippines', '142.252.251.228', '2018-01-13 12:41:48', 'http://www.baidu.com/?rands=_164196167464636444313952', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('640', 'Philippines', '142.252.251.228', '2018-01-13 12:41:48', 'http://www.so.com/?rands=_1737647322228447084654720', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('641', 'Philippines', '74.115.214.156', '2018-01-13 17:14:56', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('642', 'Philippines', '157.52.156.49', '2018-01-13 17:21:38', 'http://www.ceek.jp/?rands=_11726992703708541299088', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('643', 'Philippines', '157.52.156.49', '2018-01-13 17:21:38', 'http://m.baidu.com/?rands=_427525104021274772519636', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('644', 'Philippines', '74.115.214.154', '2018-01-13 20:46:12', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('645', 'Philippines', '139.162.108.53', '2018-01-13 21:05:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('646', 'Philippines', '142.252.251.228', '2018-01-13 21:59:54', 'http://www.baidu.com/?rands=_1597411444408175124451196', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('647', 'Philippines', '142.252.251.228', '2018-01-13 21:59:54', 'http://www.sogou.com/?rands=_586087165431424765692720', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('648', 'Philippines', '139.162.111.98', '2018-01-13 23:43:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('649', 'Philippines', '61.224.210.246', '2018-01-14 01:26:57', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('650', 'Philippines', '61.224.210.246', '2018-01-14 01:26:57', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('651', 'Philippines', '77.123.207.55', '2018-01-14 02:03:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('652', 'Philippines', '66.249.82.70', '2018-01-14 03:58:49', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('653', 'Philippines', '157.52.156.49', '2018-01-14 06:32:13', 'http://www.ceek.jp/?rands=_1155697725620839562575200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('654', 'Philippines', '157.52.156.49', '2018-01-14 06:32:13', 'http://m.baidu.com/?rands=_1243524288011387643082464', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('655', 'Philippines', '142.252.251.228', '2018-01-14 07:06:16', 'http://www.so.com/?rands=_33657103481623080206263436', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('656', 'Philippines', '142.252.251.228', '2018-01-14 07:06:16', 'http://www.baidu.com/?rands=_6092960903733728705120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('657', 'Philippines', '74.115.214.135', '2018-01-14 08:06:09', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('658', 'Philippines', '74.115.214.131', '2018-01-14 11:39:30', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('659', 'Philippines', '74.115.214.134', '2018-01-14 11:39:31', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('660', 'Philippines', '142.234.115.154', '2018-01-14 12:45:03', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('661', 'Philippines', '95.215.60.147', '2018-01-14 12:53:04', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('662', 'Philippines', '142.252.251.228', '2018-01-14 16:09:49', 'http://www.so.com/?rands=_11670125161429309941747912', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('663', 'Philippines', '142.252.251.228', '2018-01-14 16:09:49', 'http://www.sogou.com/?rands=_358261996233446793997444', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('664', 'Philippines', '142.252.251.228', '2018-01-14 16:09:49', 'http://www.baidu.com/?rands=_954877882442719161630272', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('665', 'Philippines', '164.52.24.140', '2018-01-14 17:35:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('666', 'Philippines', '157.52.156.49', '2018-01-14 19:41:32', 'http://m.baidu.com/?rands=_1218428769014762401412424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('667', 'Philippines', '192.99.133.147', '2018-01-14 22:10:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('668', 'Philippines', '104.236.190.78', '2018-01-14 23:31:42', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('669', 'Philippines', '196.52.43.123', '2018-01-15 00:32:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('670', 'Philippines', '142.252.251.228', '2018-01-15 01:30:40', 'http://www.so.com/?rands=_274063849626639734318496', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('671', 'Philippines', '142.252.251.228', '2018-01-15 01:30:40', 'http://www.baidu.com/?rands=_145534980461756437359040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('672', 'Philippines', '137.74.247.68', '2018-01-15 02:56:06', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('673', 'Philippines', '58.218.200.91', '2018-01-15 03:20:10', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('674', 'Philippines', '210.14.78.91', '2018-01-15 03:24:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('675', 'Philippines', '196.52.43.102', '2018-01-15 03:59:02', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('676', 'Philippines', '139.162.111.98', '2018-01-15 05:02:33', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('677', 'Philippines', '164.52.6.186', '2018-01-15 06:40:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('678', 'Philippines', '54.153.68.130', '2018-01-15 06:43:44', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('679', 'Philippines', '104.236.134.82', '2018-01-15 08:03:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('680', 'Philippines', '157.52.156.49', '2018-01-15 08:52:31', 'http://m.baidu.com/?rands=_123924992001024254623848', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('681', 'Philippines', '157.52.156.49', '2018-01-15 08:52:32', 'http://www.ceek.jp/?rands=_2736101980210980481984564', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('682', 'Philippines', '60.191.38.78', '2018-01-15 09:45:23', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('683', 'Philippines', '142.252.251.228', '2018-01-15 10:23:23', 'http://www.sogou.com/?rands=_103953052541121130233376', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('684', 'Philippines', '142.252.251.228', '2018-01-15 10:23:23', 'http://www.baidu.com/?rands=_146512909605899952041424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('685', 'Philippines', '142.252.251.228', '2018-01-15 10:23:23', 'http://www.so.com/?rands=_9981194544023733848029840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('686', 'Philippines', '80.82.77.33', '2018-01-15 10:28:31', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('687', 'Philippines', '82.221.105.7', '2018-01-15 11:34:51', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('688', 'Philippines', '172.104.108.109', '2018-01-15 13:45:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('689', 'Philippines', '139.162.79.87', '2018-01-15 16:33:54', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('690', 'Philippines', '209.126.136.4', '2018-01-15 16:43:25', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('691', 'Philippines', '89.248.172.90', '2018-01-15 18:36:03', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('692', 'Philippines', '142.252.251.228', '2018-01-15 19:31:44', 'http://www.so.com/?rands=_401011692086649504668144', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('693', 'Philippines', '142.252.251.228', '2018-01-15 19:31:44', 'http://www.baidu.com/?rands=_1597411825889241444828416', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('694', 'Philippines', '139.162.108.53', '2018-01-15 19:56:27', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('695', 'Philippines', '157.52.156.49', '2018-01-15 22:06:21', 'http://www.ceek.jp/?rands=_554581060010041243582544', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('696', 'Philippines', '157.52.156.49', '2018-01-15 22:06:21', 'http://m.baidu.com/?rands=_116972869206434401186128', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('697', 'Philippines', '192.0.6.180', '2018-01-15 22:43:58', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('698', 'Philippines', '177.235.38.54', '2018-01-16 01:32:36', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('699', 'Philippines', '177.235.38.54', '2018-01-16 01:32:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('700', 'Philippines', '193.111.198.9', '2018-01-16 01:39:19', 'http://138.197.15.53/.ftpconfig', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('701', 'Philippines', '193.111.198.9', '2018-01-16 01:39:19', 'http://138.197.15.53/.remote-sync.json', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('702', 'Philippines', '193.111.198.9', '2018-01-16 01:39:19', 'http://138.197.15.53/.env', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('703', 'Philippines', '200.98.200.52', '2018-01-16 02:08:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('704', 'Philippines', '200.98.201.52', '2018-01-16 02:23:41', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('705', 'Philippines', '222.187.221.185', '2018-01-16 04:19:02', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('706', 'Philippines', '142.252.251.228', '2018-01-16 04:47:41', 'http://www.baidu.com/?rands=_6030494546592322265276', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('707', 'Philippines', '142.252.251.228', '2018-01-16 04:47:42', 'http://www.sogou.com/?rands=_1268023024421457894483840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('708', 'Philippines', '142.252.251.228', '2018-01-16 04:47:42', 'http://www.so.com/?rands=_3481939902191536411320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('709', 'Philippines', '94.102.49.193', '2018-01-16 05:59:02', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('710', 'Philippines', '200.152.69.110', '2018-01-16 07:58:07', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('711', 'Philippines', '185.96.232.129', '2018-01-16 10:45:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('712', 'Philippines', '185.96.232.129', '2018-01-16 10:45:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('713', 'Philippines', '157.52.156.49', '2018-01-16 11:17:04', 'http://m.baidu.com/?rands=_454375292018721922246320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('714', 'Philippines', '157.52.156.49', '2018-01-16 11:17:04', 'http://www.ceek.jp/?rands=_60509111487885022689112', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('715', 'Philippines', '142.252.251.228', '2018-01-16 13:49:12', 'http://www.so.com/?rands=_238838480422297862721664', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('716', 'Philippines', '142.252.251.228', '2018-01-16 13:49:12', 'http://www.baidu.com/?rands=_130806505929373804356168', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('717', 'Philippines', '142.252.251.228', '2018-01-16 13:49:13', 'http://www.sogou.com/?rands=_883217744020902502638968', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('718', 'Philippines', '89.248.172.90', '2018-01-16 17:28:08', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('719', 'Philippines', '42.51.153.7', '2018-01-16 20:37:53', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('720', 'Philippines', '42.51.153.7', '2018-01-16 20:37:55', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('721', 'Philippines', '163.172.169.150', '2018-01-16 22:08:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('722', 'Philippines', '142.252.251.228', '2018-01-16 22:58:27', 'http://www.sogou.com/?rands=_91054785881010889174384', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('723', 'Philippines', '142.252.251.228', '2018-01-16 22:58:27', 'http://www.baidu.com/?rands=_1903396361975134399668', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('724', 'Philippines', '142.252.251.228', '2018-01-16 22:58:27', 'http://www.so.com/?rands=_427534518029599683562244', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('725', 'Philippines', '157.52.156.49', '2018-01-17 00:29:34', 'http://www.ceek.jp/?rands=_55639720011860863190348', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('726', 'Philippines', '157.52.156.49', '2018-01-17 00:29:34', 'http://m.baidu.com/?rands=_2804646992593769466272', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('727', 'Philippines', '141.212.122.144', '2018-01-17 01:22:34', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('728', 'Philippines', '186.227.43.174', '2018-01-17 04:58:48', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('729', 'Philippines', '5.101.6.170', '2018-01-17 07:30:40', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('730', 'Philippines', '142.252.251.228', '2018-01-17 07:44:36', 'http://www.so.com/?rands=_1919421272162748481065152', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('731', 'Philippines', '142.252.251.228', '2018-01-17 07:44:36', 'http://www.baidu.com/?rands=_478056133023155441962800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('732', 'Philippines', '142.252.251.228', '2018-01-17 07:44:36', 'http://www.sogou.com/?rands=_688022495212130201328328', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('733', 'Philippines', '62.210.189.51', '2018-01-17 08:04:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('734', 'Philippines', '62.210.189.51', '2018-01-17 08:04:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('735', 'Philippines', '62.210.189.51', '2018-01-17 08:04:48', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('736', 'Philippines', '89.248.172.90', '2018-01-17 08:30:45', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('737', 'Philippines', '89.248.172.90', '2018-01-17 08:30:45', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('738', 'Philippines', '172.104.108.109', '2018-01-17 09:27:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('739', 'Philippines', '196.52.43.110', '2018-01-17 10:04:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('740', 'Philippines', '209.126.136.4', '2018-01-17 12:51:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('741', 'Philippines', '74.115.214.148', '2018-01-17 13:28:07', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('742', 'Philippines', '157.52.156.49', '2018-01-17 13:37:19', 'http://m.baidu.com/?rands=_1268018638817996943699168', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('743', 'Philippines', '157.52.156.49', '2018-01-17 13:37:20', 'http://www.ceek.jp/?rands=_17106798687205941306908', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('744', 'Philippines', '37.72.175.115', '2018-01-17 14:23:21', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('745', 'Philippines', '86.96.105.213', '2018-01-17 14:23:22', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('746', 'Philippines', '74.115.214.133', '2018-01-17 14:26:24', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('747', 'Philippines', '178.73.215.171', '2018-01-17 14:33:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('748', 'Philippines', '142.252.251.228', '2018-01-17 16:57:53', 'http://www.baidu.com/?rands=_478074844033906182747920', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('749', 'Philippines', '142.252.251.228', '2018-01-17 16:57:53', 'http://www.so.com/?rands=_974013746182449620449464', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('750', 'Philippines', '142.252.251.228', '2018-01-17 16:57:54', 'http://www.sogou.com/?rands=_1279693936010291684383936', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('751', 'Philippines', '74.115.214.150', '2018-01-17 18:29:01', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('752', 'Philippines', '178.73.215.171', '2018-01-17 18:30:52', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('753', 'Philippines', '172.104.108.109', '2018-01-17 20:56:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('754', 'Philippines', '37.187.239.3', '2018-01-17 22:12:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('755', 'Philippines', '196.52.43.63', '2018-01-18 00:32:59', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('756', 'Philippines', '47.203.88.202', '2018-01-18 01:29:08', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('757', 'Philippines', '142.252.251.228', '2018-01-18 02:03:07', 'http://www.sogou.com/?rands=_1825612970329419165205636', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('758', 'Philippines', '142.252.251.228', '2018-01-18 02:03:08', 'http://www.so.com/?rands=_1523044260022881722172960', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('759', 'Philippines', '157.52.156.49', '2018-01-18 02:50:17', 'http://www.ceek.jp/?rands=_1766417744020902502724096', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('760', 'Philippines', '157.52.156.49', '2018-01-18 02:50:17', 'http://m.baidu.com/?rands=_94031878016415103584640', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('761', 'Philippines', '66.240.205.34', '2018-01-18 03:56:28', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('762', 'Philippines', '122.2.250.64', '2018-01-18 08:12:40', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('763', 'Philippines', '122.2.250.64', '2018-01-18 08:12:55', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('764', 'Philippines', '122.2.250.64', '2018-01-18 08:17:55', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('765', 'Philippines', '122.2.250.64', '2018-01-18 08:44:16', 'http://ssmcgroup.ph/HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('766', 'Philippines', '122.2.250.64', '2018-01-18 08:44:26', 'http://ssmcgroup.ph/Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('767', 'Philippines', '122.2.250.64', '2018-01-18 08:44:31', 'http://ssmcgroup.ph/About', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('768', 'Philippines', '78.129.130.46', '2018-01-18 09:52:03', 'http://qafqazinfo.az/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('769', 'Philippines', '142.252.251.228', '2018-01-18 11:04:07', 'http://www.sogou.com/?rands=_9396127238827896404435740', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('770', 'Philippines', '142.252.251.228', '2018-01-18 11:04:08', 'http://www.so.com/?rands=_6963063003733728716872', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('771', 'Philippines', '142.252.251.228', '2018-01-18 11:04:08', 'http://www.baidu.com/?rands=_561417538129009006463584', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('772', 'Philippines', '104.236.186.72', '2018-01-18 11:09:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('773', 'Philippines', '157.52.156.49', '2018-01-18 16:04:43', 'http://m.baidu.com/?rands=_1523037621019929241901340', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('774', 'Philippines', '157.52.156.49', '2018-01-18 16:04:43', 'http://www.ceek.jp/?rands=_14659682204214251438276', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('775', 'Philippines', '137.74.247.68', '2018-01-18 16:36:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('776', 'Philippines', '222.187.221.185', '2018-01-18 18:36:02', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('777', 'Philippines', '142.252.251.228', '2018-01-18 20:17:55', 'http://www.baidu.com/?rands=_2282446048842223599079776', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('778', 'Philippines', '142.252.251.228', '2018-01-18 20:17:55', 'http://www.sogou.com/?rands=_6000136326421430201221852', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('779', 'Philippines', '142.252.251.228', '2018-01-18 20:17:55', 'http://www.so.com/?rands=_10619189581030018006470056', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('780', 'Philippines', '89.248.172.90', '2018-01-18 20:42:18', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('781', 'Philippines', '89.248.172.90', '2018-01-18 20:42:32', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('782', 'Philippines', '71.6.146.186', '2018-01-18 20:50:20', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('783', 'Philippines', '164.132.91.1', '2018-01-18 21:20:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('784', 'Philippines', '104.131.148.154', '2018-01-18 22:45:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('785', 'Philippines', '45.123.190.147', '2018-01-19 01:55:47', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('786', 'Philippines', '157.52.156.49', '2018-01-19 05:15:53', 'http://www.ceek.jp/?rands=_1386039276844914146140580', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('787', 'Philippines', '157.52.156.49', '2018-01-19 05:15:54', 'http://m.baidu.com/?rands=_939678300817822702858588', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('788', 'Philippines', '142.252.251.228', '2018-01-19 05:31:19', 'http://www.baidu.com/?rands=_21006217672053290803154768', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('789', 'Philippines', '142.252.251.228', '2018-01-19 05:31:19', 'http://www.sogou.com/?rands=_328877151630738154816784', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('790', 'Philippines', '142.252.251.228', '2018-01-19 05:31:19', 'http://www.so.com/?rands=_75783004662575802276808', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('791', 'Philippines', '125.64.94.208', '2018-01-19 11:24:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('792', 'Philippines', '178.73.215.171', '2018-01-19 13:03:53', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('793', 'Philippines', '142.252.251.228', '2018-01-19 14:31:34', 'http://www.sogou.com/?rands=_87910220104214251391880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('794', 'Philippines', '142.252.251.228', '2018-01-19 14:31:34', 'http://www.so.com/?rands=_9105456834888357153624', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('795', 'Philippines', '142.252.251.228', '2018-01-19 14:31:34', 'http://www.baidu.com/?rands=_129456263361204366823547348', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('796', 'Philippines', '61.240.145.3', '2018-01-19 15:06:20', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('797', 'Philippines', '191.101.180.76', '2018-01-19 15:13:17', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('798', 'Philippines', '96.47.226.20', '2018-01-19 17:25:24', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('799', 'Philippines', '96.47.226.19', '2018-01-19 17:25:26', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('800', 'Philippines', '47.203.92.52', '2018-01-19 18:09:09', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('801', 'Philippines', '157.52.156.49', '2018-01-19 18:27:45', 'http://m.baidu.com/?rands=_1055226407211289421950912', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('802', 'Philippines', '157.52.156.49', '2018-01-19 18:27:45', 'http://www.ceek.jp/?rands=_126006560163473822754756', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('803', 'Philippines', '89.248.172.90', '2018-01-19 20:48:38', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('804', 'Philippines', '181.91.118.168', '2018-01-19 21:49:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('805', 'Philippines', '118.123.12.177', '2018-01-19 22:21:04', 'http://www.search.com/?rands=_1182583470105885296248', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('806', 'Philippines', '118.123.12.177', '2018-01-19 22:21:05', 'http://www.so.com/?rands=_6384130056986904183724', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('807', 'Philippines', '118.123.12.177', '2018-01-19 22:21:05', 'http://www.baidu.com/?rands=_1523030982016976761629720', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('808', 'Philippines', '164.52.24.140', '2018-01-19 23:56:48', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('809', 'Philippines', '47.203.92.52', '2018-01-20 01:18:10', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('810', 'Philippines', '141.212.122.144', '2018-01-20 03:44:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('811', 'Philippines', '163.172.169.150', '2018-01-20 04:38:51', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('812', 'Philippines', '196.52.43.92', '2018-01-20 04:54:12', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('813', 'Philippines', '142.252.251.228', '2018-01-20 08:40:26', 'http://www.baidu.com/?rands=_83460904018869555060552', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('814', 'Philippines', '142.252.251.228', '2018-01-20 08:40:26', 'http://www.sogou.com/?rands=_45152720124543114533492', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('815', 'Philippines', '74.115.214.144', '2018-01-20 08:55:57', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('816', 'Philippines', '157.52.156.49', '2018-01-20 09:22:55', 'http://www.sogou.com/?rands=_97360904019408685280576', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('817', 'Philippines', '157.52.156.49', '2018-01-20 09:22:56', 'http://m.baidu.com/?rands=_10890188737815411635192768', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('818', 'Philippines', '164.52.6.186', '2018-01-20 10:25:14', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('819', 'Philippines', '139.162.79.87', '2018-01-20 15:02:35', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('820', 'Philippines', '107.151.196.32', '2018-01-20 17:20:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('821', 'Philippines', '217.147.89.196', '2018-01-20 17:25:31', 'http://interpress.az/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('822', 'Philippines', '142.252.251.228', '2018-01-20 17:58:24', 'http://www.sogou.com/?rands=_860024637614151901468152', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('823', 'Philippines', '142.252.251.228', '2018-01-20 17:58:25', 'http://www.baidu.com/?rands=_2284477022739702555636', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('824', 'Philippines', '142.252.251.228', '2018-01-20 17:58:25', 'http://www.so.com/?rands=_598516474501128487811816224', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('825', 'Philippines', '188.166.113.77', '2018-01-20 23:02:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('826', 'Philippines', '47.203.92.52', '2018-01-20 23:26:49', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('827', 'Philippines', '142.252.251.228', '2018-01-21 02:56:20', 'http://www.sogou.com/?rands=_117211833805394241809444', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('828', 'Philippines', '142.252.251.228', '2018-01-21 02:56:20', 'http://www.so.com/?rands=_12404809460593055122208', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('829', 'Philippines', '142.252.251.228', '2018-01-21 02:56:20', 'http://www.baidu.com/?rands=_1268024120822150084595936', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('830', 'Philippines', '45.55.3.136', '2018-01-21 03:44:33', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('831', 'Philippines', '163.172.169.150', '2018-01-21 04:22:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('832', 'Philippines', '179.157.1.192', '2018-01-21 07:46:24', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('833', 'Philippines', '179.157.1.192', '2018-01-21 07:46:36', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('834', 'Philippines', '5.188.87.7', '2018-01-21 09:11:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('835', 'Philippines', '142.252.251.228', '2018-01-21 11:42:16', 'http://www.so.com/?rands=_1783270016030168098660480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('836', 'Philippines', '142.252.251.228', '2018-01-21 11:42:17', 'http://www.sogou.com/?rands=_7260136672211827533801848', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('837', 'Philippines', '157.52.156.49', '2018-01-21 12:26:03', 'http://m.baidu.com/?rands=_554581060012323344200224', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('838', 'Philippines', '104.236.170.221', '2018-01-21 13:30:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('839', 'Philippines', '196.52.43.115', '2018-01-21 14:13:53', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('840', 'Philippines', '121.58.211.162', '2018-01-21 14:32:11', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('841', 'Philippines', '118.123.12.177', '2018-01-21 19:18:26', 'http://www.so.com/?rands=_790058876817457961790200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('842', 'Philippines', '118.123.12.177', '2018-01-21 19:18:26', 'http://www.baidu.com/?rands=_347453693210726832761880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('843', 'Philippines', '118.123.12.177', '2018-01-21 19:18:27', 'http://www.search.com/?rands=_70025441801421088895272', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('844', 'Philippines', '5.188.87.7', '2018-01-21 20:32:57', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('845', 'Philippines', '142.252.251.228', '2018-01-21 20:46:29', 'http://www.baidu.com/?rands=_4352348302759712540592', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('846', 'Philippines', '142.252.251.228', '2018-01-21 20:46:29', 'http://www.sogou.com/?rands=_1032025708814960581712844', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('847', 'Philippines', '142.252.251.228', '2018-01-21 20:46:29', 'http://www.so.com/?rands=_994832384014493363963168', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('848', 'Philippines', '74.115.214.153', '2018-01-21 21:24:09', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('849', 'Philippines', '144.217.210.45', '2018-01-21 21:44:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('850', 'Philippines', '121.58.211.162', '2018-01-22 00:33:40', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('851', 'Philippines', '139.162.79.87', '2018-01-22 00:40:33', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('852', 'Philippines', '162.243.158.237', '2018-01-22 01:50:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('853', 'Philippines', '157.52.156.49', '2018-01-22 01:55:25', 'http://www.sogou.com/?rands=_198064083266893408805360', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('854', 'Philippines', '157.52.156.49', '2018-01-22 01:55:25', 'http://m.baidu.com/?rands=_4020258024351691394016', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('855', 'Philippines', '121.58.211.162', '2018-01-22 08:23:41', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('856', 'Philippines', '121.58.211.162', '2018-01-22 08:23:48', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('857', 'Philippines', '121.58.211.162', '2018-01-22 08:24:10', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('858', 'Philippines', '121.58.211.162', '2018-01-22 08:24:26', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('859', 'Philippines', '121.58.211.162', '2018-01-22 08:25:32', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('860', 'Philippines', '121.58.211.162', '2018-01-22 09:57:45', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('861', 'Philippines', '121.58.211.162', '2018-01-22 09:57:56', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('862', 'Philippines', '121.58.211.162', '2018-01-22 09:59:15', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('863', 'Philippines', '121.58.211.162', '2018-01-22 10:09:01', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('864', 'Philippines', '209.126.136.4', '2018-01-22 13:03:29', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('865', 'Philippines', '208.100.26.232', '2018-01-22 13:42:21', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('866', 'Philippines', '208.100.26.232', '2018-01-22 13:42:21', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('867', 'Philippines', '142.252.251.228', '2018-01-22 14:54:24', 'http://www.sogou.com/?rands=_146510220104551391809444', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('868', 'Philippines', '142.252.251.228', '2018-01-22 14:54:24', 'http://www.so.com/?rands=_6342105761629158801238524', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('869', 'Philippines', '157.52.156.49', '2018-01-22 15:30:11', 'http://m.baidu.com/?rands=_1472016635020066402809224', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('870', 'Philippines', '157.52.156.49', '2018-01-22 15:30:11', 'http://www.sogou.com/?rands=_12056003209704642138616', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('871', 'Philippines', '96.47.226.19', '2018-01-22 16:50:56', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('872', 'Philippines', '181.114.206.1', '2018-01-22 17:26:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('873', 'Philippines', '181.114.206.1', '2018-01-22 17:26:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('874', 'Philippines', '181.114.206.1', '2018-01-22 17:27:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('875', 'Philippines', '181.114.206.1', '2018-01-22 17:27:19', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('876', 'Philippines', '208.168.254.81', '2018-01-22 17:39:47', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('877', 'Philippines', '208.168.254.81', '2018-01-22 17:39:57', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('878', 'Philippines', '208.168.254.81', '2018-01-22 17:40:07', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('879', 'Philippines', '196.52.43.52', '2018-01-22 23:51:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('880', 'Philippines', '142.252.251.228', '2018-01-23 00:07:15', 'http://www.sogou.com/?rands=_3894131761031593243500080', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('881', 'Philippines', '142.252.251.228', '2018-01-23 00:07:15', 'http://www.baidu.com/?rands=_106406719564057272663004', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('882', 'Philippines', '201.131.220.140', '2018-01-23 00:55:13', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('883', 'Philippines', '186.52.87.48', '2018-01-23 04:55:02', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('884', 'Philippines', '186.52.87.48', '2018-01-23 04:55:05', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('885', 'Philippines', '186.52.87.48', '2018-01-23 04:55:05', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('886', 'Philippines', '131.129.228.206', '2018-01-23 05:28:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('887', 'Philippines', '196.52.43.88', '2018-01-23 07:19:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('888', 'Philippines', '118.123.12.177', '2018-01-23 07:43:42', 'http://www.search.com/?rands=_89162406807204322381632', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('889', 'Philippines', '118.123.12.177', '2018-01-23 07:43:42', 'http://www.baidu.com/?rands=_10264856205147101258504', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('890', 'Philippines', '142.252.251.228', '2018-01-23 09:05:04', 'http://www.baidu.com/?rands=_25592192816021318488402544', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('891', 'Philippines', '142.252.251.228', '2018-01-23 09:05:04', 'http://www.sogou.com/?rands=_11720128853241899687892180', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('892', 'Philippines', '142.44.130.186', '2018-01-23 12:13:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('893', 'Philippines', '185.140.108.3', '2018-01-23 13:44:26', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('894', 'Philippines', '89.248.172.90', '2018-01-23 15:25:16', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('895', 'Philippines', '191.101.180.76', '2018-01-23 17:42:24', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('896', 'Philippines', '142.252.251.228', '2018-01-23 18:11:32', 'http://www.baidu.com/?rands=_1737642426824477723989760', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('897', 'Philippines', '142.252.251.228', '2018-01-23 18:11:32', 'http://www.so.com/?rands=_104221708420321804951094780', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('898', 'Philippines', '107.170.226.204', '2018-01-23 21:13:55', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('899', 'Philippines', '47.203.92.52', '2018-01-23 21:23:38', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('900', 'Philippines', '108.171.109.253', '2018-01-23 22:21:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('901', 'Philippines', '108.171.109.253', '2018-01-23 22:21:47', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('902', 'Philippines', '108.171.109.253', '2018-01-23 22:21:48', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('903', 'Philippines', '108.171.109.253', '2018-01-23 22:21:49', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('904', 'Philippines', '108.171.109.253', '2018-01-23 22:21:58', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('905', 'Philippines', '177.11.17.81', '2018-01-24 00:28:36', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('906', 'Philippines', '177.11.17.81', '2018-01-24 00:28:37', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('907', 'Philippines', '177.11.17.81', '2018-01-24 00:28:37', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('908', 'Philippines', '184.106.243.134', '2018-01-24 01:48:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('909', 'Philippines', '142.252.251.228', '2018-01-24 03:07:57', 'http://www.sogou.com/?rands=_320812991206006004069664', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('910', 'Philippines', '162.243.139.33', '2018-01-24 04:12:21', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('911', 'Philippines', '157.52.156.49', '2018-01-24 04:19:50', 'http://204.44.65.4:54681/?rands=_975322621900202313064', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('912', 'Philippines', '107.170.224.109', '2018-01-24 05:18:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('913', 'Philippines', '74.115.214.139', '2018-01-24 06:58:18', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('914', 'Philippines', '180.213.252.181', '2018-01-24 09:18:11', 'http://www.minghui.org/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('915', 'Philippines', '221.11.231.216', '2018-01-24 09:18:13', 'http://boxun.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('916', 'Philippines', '139.210.239.54', '2018-01-24 09:18:13', 'http://www.123cha.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('917', 'Philippines', '60.1.126.242', '2018-01-24 09:18:15', 'http://www.ip.cn/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('918', 'Philippines', '209.126.136.4', '2018-01-24 09:42:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('919', 'Philippines', '172.241.151.21', '2018-01-24 11:37:32', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('920', 'Philippines', '142.252.251.228', '2018-01-24 12:10:11', 'http://www.baidu.com/?rands=_9396122345028671304435740', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('921', 'Philippines', '142.252.251.228', '2018-01-24 12:10:11', 'http://www.sogou.com/?rands=_2205015853728684556827004', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('922', 'Philippines', '142.252.251.228', '2018-01-24 12:10:12', 'http://www.so.com/?rands=_3894101644224572522768720', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('923', 'Philippines', '107.170.231.131', '2018-01-24 12:29:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('924', 'Philippines', '66.240.205.34', '2018-01-24 14:20:39', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('925', 'Philippines', '107.170.251.178', '2018-01-24 17:04:15', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('926', 'Philippines', '177.46.142.236', '2018-01-24 17:19:08', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('927', 'Philippines', '177.46.142.236', '2018-01-24 17:19:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('928', 'Philippines', '177.46.142.236', '2018-01-24 17:19:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('929', 'Philippines', '79.98.3.68', '2018-01-24 18:01:41', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('930', 'Philippines', '79.98.3.68', '2018-01-24 18:01:46', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('931', 'Philippines', '79.98.3.68', '2018-01-24 18:01:46', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('932', 'Philippines', '79.98.3.68', '2018-01-24 18:01:46', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('933', 'Philippines', '79.98.3.68', '2018-01-24 18:01:47', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('934', 'Philippines', '200.98.70.238', '2018-01-24 18:16:27', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('935', 'Philippines', '217.23.3.92', '2018-01-24 18:46:07', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('936', 'Philippines', '89.248.172.90', '2018-01-24 19:15:14', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('937', 'Philippines', '157.52.156.49', '2018-01-24 20:12:36', 'http://204.44.65.4:54681/?rands=_860025708813747561433196', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('938', 'Philippines', '142.252.251.228', '2018-01-24 21:16:25', 'http://www.sogou.com/?rands=_346535142448736627183320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('939', 'Philippines', '142.252.251.228', '2018-01-24 21:16:25', 'http://www.baidu.com/?rands=_1448035899621831483407920', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('940', 'Philippines', '141.212.122.128', '2018-01-25 01:03:19', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('941', 'Philippines', '139.162.79.87', '2018-01-25 03:38:57', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('942', 'Philippines', '164.52.24.140', '2018-01-25 06:56:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('943', 'Philippines', '58.248.204.25', '2018-01-25 07:36:44', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('944', 'Philippines', '179.221.112.252', '2018-01-25 11:48:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('945', 'Philippines', '157.52.156.49', '2018-01-25 12:01:15', 'http://204.44.65.4:54681/?rands=_1191510821802471011651680', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('946', 'Philippines', '60.191.38.78', '2018-01-25 12:58:28', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('947', 'Philippines', '54.173.166.253', '2018-01-25 12:59:42', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('948', 'Philippines', '118.123.12.177', '2018-01-25 13:41:34', 'http://www.baidu.com/?rands=_6237160660597936119680', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('949', 'Philippines', '118.123.12.177', '2018-01-25 13:41:34', 'http://www.search.com/?rands=_409224170437864711280928', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('950', 'Philippines', '118.123.12.177', '2018-01-25 13:41:34', 'http://www.so.com/?rands=_8070344466450282921044', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('951', 'Philippines', '118.123.12.177', '2018-01-25 13:41:36', 'http://www.baidu.com/?rands=_52481058803906451238480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('952', 'Philippines', '118.123.12.177', '2018-01-25 13:41:36', 'http://www.search.com/?rands=_8070344466450282872568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('953', 'Philippines', '118.123.12.177', '2018-01-25 13:41:39', 'http://www.so.com/?rands=_256518828016649821998332', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('954', 'Philippines', '164.52.6.186', '2018-01-25 14:10:25', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('955', 'Philippines', '112.193.169.142', '2018-01-25 17:57:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('956', 'Philippines', '142.252.251.228', '2018-01-26 00:22:23', 'http://www.baidu.com/?rands=_21686115200019553942602952', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('957', 'Philippines', '142.252.251.228', '2018-01-26 00:22:24', 'http://www.so.com/?rands=_18588107520020019511204672', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('958', 'Philippines', '13.57.244.208', '2018-01-26 01:18:25', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('959', 'Philippines', '118.123.12.177', '2018-01-26 01:30:00', 'http://www.so.com/?rands=_382426730032252222467520', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('960', 'Philippines', '118.123.12.177', '2018-01-26 01:30:00', 'http://www.search.com/?rands=_72352528026467205306936', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('961', 'Philippines', '89.248.172.90', '2018-01-26 03:22:36', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('962', 'Philippines', '157.52.156.49', '2018-01-26 03:58:49', 'http://204.44.65.4:54681/?rands=_10395240990822162161568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('963', 'Philippines', '167.250.175.40', '2018-01-26 05:37:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('964', 'Philippines', '139.162.79.87', '2018-01-26 11:52:56', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('965', 'Philippines', '173.212.217.181', '2018-01-26 14:05:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('966', 'Philippines', '173.212.217.181', '2018-01-26 14:05:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('967', 'Philippines', '173.212.217.181', '2018-01-26 14:05:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('968', 'Philippines', '196.52.43.106', '2018-01-26 15:21:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('969', 'Philippines', '74.115.214.143', '2018-01-26 16:19:26', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('970', 'Philippines', '142.252.251.228', '2018-01-26 18:19:00', 'http://www.baidu.com/?rands=_6654167524020995327288624', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('971', 'Philippines', '142.252.251.228', '2018-01-26 18:19:00', 'http://www.so.com/?rands=_127477178821470384257424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('972', 'Philippines', '157.52.156.49', '2018-01-26 19:38:15', 'http://204.44.65.4:54681/?rands=_87203795125514002868696', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('973', 'Philippines', '82.118.242.6', '2018-01-26 21:50:05', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('974', 'Philippines', '82.118.242.6', '2018-01-26 21:51:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('975', 'Philippines', '74.115.214.139', '2018-01-26 22:40:08', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('976', 'Philippines', '141.212.122.160', '2018-01-27 01:27:54', 'null://null:-1null', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('977', 'Philippines', '121.58.211.162', '2018-01-27 04:08:34', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('978', 'Philippines', '121.58.211.162', '2018-01-27 04:09:03', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('979', 'Philippines', '121.58.211.162', '2018-01-27 04:09:17', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('980', 'Philippines', '121.58.211.162', '2018-01-27 04:09:19', 'http://ssmcgroup.ph/Welcome', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('981', 'Philippines', '121.58.211.162', '2018-01-27 04:09:21', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('982', 'Philippines', '121.58.211.162', '2018-01-27 04:09:23', 'http://ssmcgroup.ph/Welcome', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('983', 'Philippines', '121.58.211.162', '2018-01-27 04:09:25', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('984', 'Philippines', '121.58.211.162', '2018-01-27 04:13:05', 'http://ssmcgroup.ph/Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('985', 'Philippines', '121.58.211.162', '2018-01-27 04:13:09', 'http://ssmcgroup.ph/Medical-Services?page=1', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('986', 'Philippines', '121.58.211.162', '2018-01-27 04:13:17', 'http://ssmcgroup.ph/Medical-Services?page=0', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('987', 'Philippines', '121.58.211.162', '2018-01-27 04:13:29', 'http://ssmcgroup.ph/Medical-Services?page=0', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('988', 'Philippines', '121.58.211.162', '2018-01-27 04:15:45', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('989', 'Philippines', '121.58.211.162', '2018-01-27 04:15:51', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('990', 'Philippines', '121.58.211.162', '2018-01-27 04:15:54', 'http://ssmcgroup.ph/Medical-Careers', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('991', 'Philippines', '121.58.211.162', '2018-01-27 04:15:56', 'http://ssmcgroup.ph/Medical-ContactUs', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('992', 'Philippines', '121.58.211.162', '2018-01-27 04:15:59', 'http://ssmcgroup.ph/Medical-ContactUs', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('993', 'Philippines', '121.58.211.162', '2018-01-27 04:16:01', 'http://ssmcgroup.ph/Medical-ContactUs', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('994', 'Philippines', '121.58.211.162', '2018-01-27 04:16:02', 'http://ssmcgroup.ph/Medical-IndustrialMedicine', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('995', 'Philippines', '121.58.211.162', '2018-01-27 04:16:04', 'http://ssmcgroup.ph/Medical-Faq', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('996', 'Philippines', '121.58.211.162', '2018-01-27 04:16:07', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('997', 'Philippines', '121.58.211.162', '2018-01-27 04:16:19', 'http://ssmcgroup.ph/News2?news=2&button=NEXT&news-title=Online%20consultation', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('998', 'Philippines', '121.58.211.162', '2018-01-27 04:16:26', 'http://ssmcgroup.ph/News2?news=1&button=PREVIOUS', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('999', 'Philippines', '121.58.211.162', '2018-01-27 04:21:24', 'http://ssmcgroup.ph/News2?news=1&button=PREVIOUS', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1000', 'Philippines', '121.58.211.162', '2018-01-27 04:21:27', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1001', 'Philippines', '121.58.211.162', '2018-01-27 06:05:20', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1002', 'Philippines', '121.58.211.162', '2018-01-27 06:05:21', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1003', 'Philippines', '121.58.211.162', '2018-01-27 06:05:23', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1004', 'Philippines', '74.115.214.141', '2018-01-27 09:37:49', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1005', 'Philippines', '139.162.114.70', '2018-01-27 10:55:02', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1006', 'Philippines', '142.252.251.228', '2018-01-27 12:28:14', 'http://www.sogou.com/?rands=_13825142285643185484439696', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1007', 'Philippines', '142.252.251.228', '2018-01-27 12:28:14', 'http://www.baidu.com/?rands=_247521705629624224634400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1008', 'Philippines', '96.47.226.18', '2018-01-27 13:32:27', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1009', 'Philippines', '47.91.215.246', '2018-01-28 00:37:53', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1010', 'Philippines', '157.52.156.49', '2018-01-28 04:16:02', 'http://204.44.65.4:54681/?rands=_42287932122186910935212', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1011', 'Philippines', '142.252.251.228', '2018-01-28 06:38:32', 'http://www.sogou.com/?rands=_682056397630097591164480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1012', 'Philippines', '62.210.190.31', '2018-01-28 14:55:37', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1013', 'Philippines', '62.210.190.31', '2018-01-28 14:55:37', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1014', 'Philippines', '62.210.190.31', '2018-01-28 14:55:47', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1015', 'Philippines', '62.210.190.31', '2018-01-28 14:55:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1016', 'Philippines', '62.210.190.31', '2018-01-28 14:55:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1017', 'Philippines', '62.210.190.31', '2018-01-28 14:55:50', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1018', 'Philippines', '62.210.190.31', '2018-01-28 14:56:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1019', 'Philippines', '62.210.190.31', '2018-01-28 14:56:29', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1020', 'Philippines', '62.210.190.31', '2018-01-28 14:56:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1021', 'Philippines', '62.210.190.31', '2018-01-28 14:56:41', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1022', 'Philippines', '62.210.190.31', '2018-01-28 14:56:52', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1023', 'Philippines', '142.252.251.228', '2018-01-28 15:39:28', 'http://www.sogou.com/?rands=_5222858803490224669864', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1024', 'Philippines', '142.252.251.228', '2018-01-28 15:39:28', 'http://www.baidu.com/?rands=_598542363038849584691736', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1025', 'Philippines', '5.188.87.7', '2018-01-28 15:44:54', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1026', 'Philippines', '47.203.94.77', '2018-01-28 18:07:25', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1027', 'Philippines', '157.52.156.49', '2018-01-28 20:08:14', 'http://204.44.65.4:54681/?rands=_760815349615920373250784', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1028', 'Philippines', '46.201.22.182', '2018-01-28 20:51:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1029', 'Philippines', '217.74.164.66', '2018-01-28 22:00:53', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1030', 'Philippines', '217.74.164.66', '2018-01-28 22:00:53', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1031', 'Philippines', '217.74.164.66', '2018-01-28 22:00:55', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1032', 'Philippines', '217.74.164.66', '2018-01-28 22:00:56', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1033', 'Philippines', '217.74.164.66', '2018-01-28 22:00:56', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1034', 'Philippines', '194.60.77.201', '2018-01-28 22:28:46', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1035', 'Philippines', '121.58.211.162', '2018-01-28 23:53:08', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1036', 'Philippines', '121.58.211.162', '2018-01-29 00:03:14', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1037', 'Philippines', '121.58.211.162', '2018-01-29 00:03:16', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1038', 'Philippines', '121.58.211.162', '2018-01-29 00:03:22', 'http://ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1039', 'Philippines', '142.252.251.228', '2018-01-29 00:43:03', 'http://www.baidu.com/?rands=_127476308661317219228360', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1040', 'Philippines', '142.252.251.228', '2018-01-29 00:43:03', 'http://www.sogou.com/?rands=_6963063003571392705120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1041', 'Philippines', '142.252.251.228', '2018-01-29 00:43:03', 'http://www.so.com/?rands=_513043932038849584778620', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1042', 'Philippines', '54.201.160.29', '2018-01-29 01:14:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1043', 'Philippines', '5.188.87.7', '2018-01-29 02:25:05', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1044', 'Philippines', '200.98.201.104', '2018-01-29 04:33:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1045', 'Philippines', '142.252.251.228', '2018-01-29 09:20:56', 'http://www.sogou.com/?rands=_274050547621175173321920', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1046', 'Philippines', '142.252.251.228', '2018-01-29 09:20:57', 'http://www.baidu.com/?rands=_22744220869124149970152', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1047', 'Philippines', '178.73.215.171', '2018-01-29 10:52:38', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1048', 'Philippines', '45.123.190.178', '2018-01-29 11:01:26', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1049', 'Philippines', '157.52.156.49', '2018-01-29 11:57:19', 'http://204.44.65.4:54681/?rands=_103563540168392802061384', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1050', 'Philippines', '89.248.172.90', '2018-01-29 12:44:29', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1051', 'Philippines', '89.248.172.90', '2018-01-29 15:37:15', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1052', 'Philippines', '198.20.70.114', '2018-01-29 16:37:39', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1053', 'Philippines', '45.123.190.147', '2018-01-29 17:54:13', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1054', 'Philippines', '45.123.190.147', '2018-01-29 17:57:10', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1055', 'Philippines', '104.223.203.202', '2018-01-29 18:01:20', 'http://www.aoyouvpn.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1056', 'Philippines', '142.252.251.228', '2018-01-29 18:29:29', 'http://www.baidu.com/?rands=_1319052814420796303576672', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1057', 'Philippines', '142.252.251.228', '2018-01-29 18:29:29', 'http://www.so.com/?rands=_100921531500135550562127112', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1058', 'Philippines', '209.126.136.4', '2018-01-29 19:36:56', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1059', 'Philippines', '139.162.79.87', '2018-01-29 20:13:52', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1060', 'Philippines', '107.170.225.25', '2018-01-29 21:33:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1061', 'Philippines', '117.50.7.159', '2018-01-30 00:21:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1062', 'Philippines', '106.75.85.117', '2018-01-30 00:21:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1063', 'Philippines', '142.252.251.228', '2018-01-30 03:40:59', 'http://www.sogou.com/?rands=_1337465640019811886170592', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1064', 'Philippines', '142.252.251.228', '2018-01-30 03:40:59', 'http://www.so.com/?rands=_247521705630579844866120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1065', 'Philippines', '142.252.251.228', '2018-01-30 03:40:59', 'http://www.baidu.com/?rands=_75784269783691983355296', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1066', 'Philippines', '157.52.156.49', '2018-01-30 03:48:04', 'http://204.44.65.4:54681/?rands=_54563759841941780815136', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1067', 'Philippines', '172.104.108.109', '2018-01-30 04:59:53', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1068', 'Philippines', '196.52.43.86', '2018-01-30 05:31:56', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1069', 'Philippines', '142.252.251.228', '2018-01-30 12:35:00', 'http://www.so.com/?rands=_528598207229158801263800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1070', 'Philippines', '142.252.251.228', '2018-01-30 12:35:00', 'http://www.baidu.com/?rands=_2330192588820562364915608', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1071', 'Philippines', '142.252.251.228', '2018-01-30 12:35:00', 'http://www.sogou.com/?rands=_2664168262675988555636', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1072', 'Philippines', '164.52.24.140', '2018-01-30 13:56:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1073', 'Philippines', '191.181.223.114', '2018-01-30 18:17:33', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1074', 'Philippines', '191.181.223.114', '2018-01-30 18:17:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1075', 'Philippines', '58.248.203.171', '2018-01-30 18:33:26', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1076', 'Philippines', '162.243.150.42', '2018-01-30 20:44:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1077', 'Philippines', '89.248.172.90', '2018-01-30 21:19:03', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1078', 'Philippines', '89.248.172.90', '2018-01-30 21:19:06', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1079', 'Philippines', '142.252.251.228', '2018-01-30 21:55:47', 'http://www.so.com/?rands=_12404890406685308135072', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1080', 'Philippines', '142.252.251.228', '2018-01-30 21:55:47', 'http://www.sogou.com/?rands=_1950638282945313558560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1081', 'Philippines', '142.252.251.228', '2018-01-30 21:55:47', 'http://www.baidu.com/?rands=_5250155801621917251200416', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1082', 'Philippines', '124.116.157.198', '2018-01-31 02:48:13', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1083', 'Philippines', '89.248.172.90', '2018-01-31 04:41:52', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1084', 'Philippines', '209.126.136.4', '2018-01-31 04:44:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1085', 'Philippines', '112.207.252.190', '2018-01-31 05:32:20', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1086', 'Philippines', '112.207.252.190', '2018-01-31 05:32:27', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1087', 'Philippines', '112.207.252.190', '2018-01-31 05:32:44', 'http://ssmcgroup.ph/About', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1088', 'Philippines', '112.207.252.190', '2018-01-31 05:32:46', 'http://ssmcgroup.ph/Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1089', 'Philippines', '112.207.252.190', '2018-01-31 05:32:49', 'http://ssmcgroup.ph/Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1090', 'Philippines', '112.207.252.190', '2018-01-31 05:32:49', 'http://ssmcgroup.ph/Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1091', 'Philippines', '112.207.252.190', '2018-01-31 05:33:00', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1092', 'Philippines', '142.252.251.228', '2018-01-31 06:46:49', 'http://www.so.com/?rands=_1076091857611257052181420', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1093', 'Philippines', '142.252.251.228', '2018-01-31 06:46:50', 'http://www.baidu.com/?rands=_8470182229616128455285496', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1094', 'Philippines', '142.252.251.228', '2018-01-31 06:46:51', 'http://www.sogou.com/?rands=_10632701532540339111488', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1095', 'Philippines', '139.162.114.70', '2018-01-31 07:22:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1096', 'Philippines', '74.115.214.132', '2018-01-31 09:43:42', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1097', 'Philippines', '89.39.107.202', '2018-01-31 10:07:32', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1098', 'Philippines', '139.162.79.87', '2018-01-31 10:50:23', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1099', 'Philippines', '157.52.156.49', '2018-01-31 12:23:44', 'http://204.44.65.4:54681/?rands=_1035649017610491002457804', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1100', 'Philippines', '142.252.251.228', '2018-01-31 15:58:23', 'http://www.so.com/?rands=_669277517039695043476960', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1101', 'Philippines', '142.252.251.228', '2018-01-31 15:58:23', 'http://www.baidu.com/?rands=_1553459910413848123329928', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1102', 'Philippines', '142.252.251.228', '2018-01-31 15:58:23', 'http://www.sogou.com/?rands=_5222144102516208481832', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1103', 'Philippines', '74.115.214.153', '2018-01-31 16:43:44', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1104', 'Philippines', '141.212.122.16', '2018-01-31 16:55:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1105', 'Philippines', '213.136.80.124', '2018-01-31 18:59:44', 'http://138.197.15.53/?author=1', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1106', 'Philippines', '196.52.43.56', '2018-01-31 21:08:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1107', 'Philippines', '89.248.172.90', '2018-01-31 21:17:17', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1108', 'Philippines', '178.73.215.171', '2018-01-31 23:11:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1109', 'Philippines', '178.73.215.171', '2018-01-31 23:11:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1110', 'Philippines', '157.52.156.49', '2018-02-01 04:23:08', 'http://204.44.65.4:54681/?rands=_688018210411725861223460', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1111', 'Philippines', '142.252.251.228', '2018-02-01 09:47:25', 'http://www.so.com/?rands=_1668113773203427532455200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1112', 'Philippines', '47.203.94.77', '2018-02-01 10:36:49', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1113', 'Philippines', '178.73.215.171', '2018-02-01 10:54:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1114', 'Philippines', '82.102.16.82', '2018-02-01 18:22:15', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1115', 'Philippines', '177.114.114.186', '2018-02-01 18:23:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1116', 'Philippines', '177.114.114.186', '2018-02-01 18:23:36', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1117', 'Philippines', '157.52.156.49', '2018-02-01 20:12:29', 'http://204.44.65.4:54681/?rands=_1294546294411330282695656', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1118', 'Philippines', '74.115.214.134', '2018-02-01 21:08:03', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1119', 'Philippines', '162.243.149.27', '2018-02-02 00:07:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1120', 'Philippines', '139.162.114.70', '2018-02-02 03:03:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1121', 'Philippines', '191.101.180.76', '2018-02-02 04:15:22', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1122', 'Philippines', '142.252.251.228', '2018-02-02 04:20:41', 'http://www.sogou.com/?rands=_65602435248594192353112', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1123', 'Philippines', '142.252.251.228', '2018-02-02 04:20:41', 'http://www.baidu.com/?rands=_83731035636603774547832', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1124', 'Philippines', '142.252.251.228', '2018-02-02 04:20:41', 'http://www.so.com/?rands=_146510758004719961577464', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1125', 'Philippines', '36.235.168.40', '2018-02-02 07:35:32', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1126', 'Philippines', '36.235.168.40', '2018-02-02 07:35:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1127', 'Philippines', '192.241.215.164', '2018-02-02 08:32:04', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1128', 'Philippines', '77.130.176.160', '2018-02-02 10:31:22', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1129', 'Philippines', '77.130.176.160', '2018-02-02 10:31:22', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1130', 'Philippines', '77.130.176.160', '2018-02-02 10:31:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1131', 'Philippines', '77.130.176.160', '2018-02-02 10:31:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1132', 'Philippines', '77.130.176.160', '2018-02-02 10:31:25', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1133', 'Philippines', '172.104.108.109', '2018-02-02 11:44:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1134', 'Philippines', '142.252.251.228', '2018-02-02 13:56:33', 'http://www.so.com/?rands=_1737658744833739565070320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1135', 'Philippines', '142.252.251.228', '2018-02-02 13:56:34', 'http://www.sogou.com/?rands=_83163052541009017203456', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1136', 'Philippines', '196.52.43.115', '2018-02-02 20:22:01', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1137', 'Philippines', '222.186.129.203', '2018-02-02 21:21:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1138', 'Philippines', '212.47.243.192', '2018-02-02 21:24:25', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1139', 'Philippines', '60.191.38.77', '2018-02-02 21:45:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1140', 'Philippines', '142.252.251.228', '2018-02-02 23:17:10', 'http://www.sogou.com/?rands=_5250150932819969051028928', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1141', 'Philippines', '142.252.251.228', '2018-02-02 23:17:11', 'http://www.baidu.com/?rands=_891654700014408644113728', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1142', 'Philippines', '142.252.251.228', '2018-02-02 23:17:11', 'http://www.so.com/?rands=_1198851980214652301726428', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1143', 'Philippines', '201.238.155.81', '2018-02-03 01:06:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1144', 'Philippines', '201.238.155.81', '2018-02-03 01:06:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1145', 'Philippines', '201.238.155.81', '2018-02-03 01:06:27', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1146', 'Philippines', '201.238.155.81', '2018-02-03 01:06:28', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1147', 'Philippines', '201.238.155.81', '2018-02-03 01:06:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1148', 'Philippines', '201.238.155.81', '2018-02-03 01:06:30', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1149', 'Philippines', '141.212.122.96', '2018-02-03 02:16:52', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1150', 'Philippines', '107.170.229.67', '2018-02-03 02:41:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1151', 'Philippines', '157.52.156.49', '2018-02-03 03:47:38', 'http://204.44.65.4:54681/?rands=_54182197023611194800168', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1152', 'Philippines', '196.52.43.53', '2018-02-03 04:59:37', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1153', 'Philippines', '142.252.251.228', '2018-02-03 07:59:08', 'http://www.sogou.com/?rands=_11850137379240428963938440', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1154', 'Philippines', '142.252.251.228', '2018-02-03 07:59:08', 'http://www.so.com/?rands=_10268741168921641597332', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1155', 'Philippines', '142.252.251.228', '2018-02-03 07:59:08', 'http://www.baidu.com/?rands=_8872151312017800386176800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1156', 'Philippines', '60.191.38.77', '2018-02-03 10:34:26', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1157', 'Philippines', '164.132.91.1', '2018-02-03 15:48:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1158', 'Philippines', '142.252.251.228', '2018-02-03 16:57:19', 'http://www.so.com/?rands=_8316305254971646191488', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1159', 'Philippines', '142.252.251.228', '2018-02-03 16:57:19', 'http://www.baidu.com/?rands=_223042022828898855123340', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1160', 'Philippines', '142.252.251.228', '2018-02-03 16:57:19', 'http://www.sogou.com/?rands=_50522688382060641797480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1161', 'Philippines', '157.52.156.49', '2018-02-03 19:57:40', 'http://204.44.65.4:54681/?rands=_85121517321315872239640', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1162', 'Philippines', '89.248.172.90', '2018-02-03 23:03:27', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1163', 'Philippines', '74.115.214.143', '2018-02-04 00:20:30', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1164', 'Philippines', '125.201.126.112', '2018-02-04 03:17:36', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1165', 'Philippines', '45.123.190.147', '2018-02-04 03:42:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1166', 'Philippines', '45.123.190.147', '2018-02-04 03:42:54', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1167', 'Philippines', '45.123.190.147', '2018-02-04 04:45:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1168', 'Philippines', '45.123.190.147', '2018-02-04 04:45:39', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1169', 'Philippines', '60.191.38.77', '2018-02-04 05:16:15', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1170', 'Philippines', '58.19.57.157', '2018-02-04 06:11:31', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1171', 'Philippines', '172.104.108.109', '2018-02-04 07:09:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1172', 'Philippines', '71.6.142.85', '2018-02-04 09:15:30', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1173', 'Philippines', '142.252.251.228', '2018-02-04 11:04:28', 'http://www.baidu.com/?rands=_127967910408821443653280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1174', 'Philippines', '142.252.251.228', '2018-02-04 11:04:30', 'http://www.so.com/?rands=_77673812487553521744248', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1175', 'Philippines', '157.52.156.49', '2018-02-04 11:34:47', 'http://204.44.65.4:54681/?rands=_6880139256808680908856', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1176', 'Philippines', '89.248.172.90', '2018-02-04 12:09:39', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1177', 'Philippines', '139.162.114.70', '2018-02-04 13:00:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1178', 'Philippines', '139.162.79.87', '2018-02-04 15:21:31', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1179', 'Philippines', '123.249.27.95', '2018-02-04 17:29:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1180', 'Philippines', '142.252.251.228', '2018-02-04 20:01:52', 'http://www.baidu.com/?rands=_94508200204245783712932', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1181', 'Philippines', '142.252.251.228', '2018-02-04 20:01:52', 'http://www.so.com/?rands=_682075196837864711310040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1182', 'Philippines', '142.252.251.228', '2018-02-04 20:01:53', 'http://www.sogou.com/?rands=_63841625701096560191712', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1183', 'Philippines', '178.79.145.23', '2018-02-04 21:20:05', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1184', 'Philippines', '164.52.24.140', '2018-02-04 22:02:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1185', 'Philippines', '94.102.49.4', '2018-02-04 23:37:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1186', 'Philippines', '139.162.114.70', '2018-02-04 23:52:34', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1187', 'Philippines', '74.115.214.150', '2018-02-05 00:02:27', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1188', 'Philippines', '80.82.77.33', '2018-02-05 00:50:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1189', 'Philippines', '47.203.94.77', '2018-02-05 01:08:21', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1190', 'Philippines', '46.17.101.155', '2018-02-05 01:56:59', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1191', 'Philippines', '189.5.169.6', '2018-02-05 03:07:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1192', 'Philippines', '189.5.169.6', '2018-02-05 03:08:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1193', 'Philippines', '164.52.6.186', '2018-02-05 03:34:21', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1194', 'Philippines', '157.52.156.49', '2018-02-05 03:45:48', 'http://204.44.65.4:54681/?rands=_9714117374414568152564640', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1195', 'Philippines', '205.209.128.89', '2018-02-05 04:31:01', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1196', 'Philippines', '71.6.142.85', '2018-02-05 05:29:24', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1197', 'Philippines', '95.215.62.239', '2018-02-05 08:54:26', 'http://nstress.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1198', 'Philippines', '60.191.38.77', '2018-02-05 09:52:22', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1199', 'Philippines', '95.215.62.239', '2018-02-05 12:49:43', 'http://www.cyberstress.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1200', 'Philippines', '74.115.214.148', '2018-02-05 13:49:45', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1201', 'Philippines', '142.252.251.228', '2018-02-05 13:56:01', 'http://www.sogou.com/?rands=_1123815589021756566144720', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1202', 'Philippines', '142.252.251.228', '2018-02-05 13:56:01', 'http://www.so.com/?rands=_10267284306862801210100', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1203', 'Philippines', '142.252.251.228', '2018-02-05 13:56:01', 'http://www.baidu.com/?rands=_63154269783005102456556', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1204', 'Philippines', '143.255.128.50', '2018-02-05 15:01:59', 'http://officedepot.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1205', 'Philippines', '62.34.232.66', '2018-02-05 16:58:38', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1206', 'Philippines', '157.52.156.49', '2018-02-05 17:59:38', 'http://204.44.65.4:54681/?rands=_137101963584215952783200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1207', 'Philippines', '95.215.62.239', '2018-02-05 21:00:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1208', 'Philippines', '5.188.87.7', '2018-02-05 21:13:51', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1209', 'Philippines', '51.15.50.162', '2018-02-05 22:28:06', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1210', 'Philippines', '142.252.251.228', '2018-02-05 23:34:18', 'http://www.sogou.com/?rands=_548095774433470434733736', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1211', 'Philippines', '142.252.251.228', '2018-02-05 23:34:20', 'http://www.so.com/?rands=_113047786088445841898320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1212', 'Philippines', '122.114.26.196', '2018-02-06 00:00:37', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1213', 'Philippines', '122.114.26.196', '2018-02-06 00:06:02', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1214', 'Philippines', '60.191.38.78', '2018-02-06 07:44:57', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1215', 'Philippines', '157.52.156.49', '2018-02-06 09:40:29', 'http://204.44.65.4:54681/?rands=_1300433062470262935812', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1216', 'Philippines', '172.104.108.109', '2018-02-06 10:10:37', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1217', 'Philippines', '107.170.252.143', '2018-02-06 13:22:46', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1218', 'Philippines', '142.252.251.228', '2018-02-06 17:08:33', 'http://www.sogou.com/?rands=_18276112863049454044345920', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1219', 'Philippines', '142.252.251.228', '2018-02-06 17:08:33', 'http://www.baidu.com/?rands=_439556847020949844010780', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1220', 'Philippines', '142.252.251.228', '2018-02-06 17:08:34', 'http://www.so.com/?rands=_114108392565509322866872', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1221', 'Philippines', '5.188.87.7', '2018-02-06 17:31:16', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1222', 'Philippines', '47.203.94.77', '2018-02-06 20:22:19', 'http://proxyjudge.info/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1223', 'Philippines', '122.114.26.190', '2018-02-06 21:23:35', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1224', 'Philippines', '196.52.43.114', '2018-02-06 22:46:12', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1225', 'Philippines', '89.248.172.90', '2018-02-06 23:30:12', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1226', 'Philippines', '187.189.90.250', '2018-02-07 00:14:26', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1227', 'Philippines', '142.252.251.228', '2018-02-07 02:11:19', 'http://www.so.com/?rands=_97376792024260856490708', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1228', 'Philippines', '142.252.251.228', '2018-02-07 02:11:19', 'http://www.sogou.com/?rands=_14176863424606234128640', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1229', 'Philippines', '113.128.104.144', '2018-02-07 03:08:40', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1230', 'Philippines', '139.162.79.87', '2018-02-07 03:37:01', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1231', 'Philippines', '196.52.43.97', '2018-02-07 04:10:37', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1232', 'Philippines', '60.191.38.77', '2018-02-07 04:24:32', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1233', 'Philippines', '209.126.136.4', '2018-02-07 08:34:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1234', 'Philippines', '157.52.156.49', '2018-02-07 08:48:17', 'http://204.44.65.4:54681/?rands=_1268018638818689133811264', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1235', 'Philippines', '89.248.172.90', '2018-02-07 09:04:30', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1236', 'Philippines', '142.252.251.228', '2018-02-07 11:11:06', 'http://www.sogou.com/?rands=_383677151630738154484592', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1237', 'Philippines', '142.252.251.228', '2018-02-07 11:11:06', 'http://www.baidu.com/?rands=_12162143734820680321590636', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1238', 'Philippines', '142.252.251.228', '2018-02-07 11:11:07', 'http://www.so.com/?rands=_219361636320215952861520', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1239', 'Philippines', '139.162.119.197', '2018-02-07 15:20:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1240', 'Philippines', '118.123.12.177', '2018-02-07 20:07:40', 'http://www.baidu.com/?rands=_179136342618867422296404', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1241', 'Philippines', '118.123.12.177', '2018-02-07 20:07:40', 'http://www.search.com/?rands=_77672450885874961506396', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1242', 'Philippines', '142.252.251.228', '2018-02-07 20:22:41', 'http://www.baidu.com/?rands=_83460904017791294730516', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1243', 'Philippines', '142.252.251.228', '2018-02-07 20:22:41', 'http://www.so.com/?rands=_5025430040555302207192', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1244', 'Philippines', '95.215.62.239', '2018-02-08 00:00:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1245', 'Philippines', '157.52.156.49', '2018-02-08 00:40:24', 'http://204.44.65.4:54681/?rands=_1158419581611908081994880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1246', 'Philippines', '60.191.38.77', '2018-02-08 02:46:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1247', 'Philippines', '60.191.38.77', '2018-02-08 02:46:22', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1248', 'Philippines', '89.248.172.90', '2018-02-08 05:18:05', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1249', 'Philippines', '142.252.251.228', '2018-02-08 05:42:18', 'http://www.sogou.com/?rands=_10135143734821326581629432', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1250', 'Philippines', '142.252.251.228', '2018-02-08 05:42:18', 'http://www.so.com/?rands=_219237245615027542325344', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1251', 'Philippines', '142.252.251.228', '2018-02-08 05:42:18', 'http://www.baidu.com/?rands=_56527137246821641556000', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1252', 'Philippines', '45.123.190.147', '2018-02-08 10:54:29', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1253', 'Philippines', '45.123.190.147', '2018-02-08 10:54:29', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1254', 'Philippines', '151.106.15.114', '2018-02-08 11:02:48', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1255', 'Philippines', '172.104.108.109', '2018-02-08 11:27:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1256', 'Philippines', '45.123.190.147', '2018-02-08 12:14:21', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1257', 'Philippines', '45.123.190.147', '2018-02-08 12:14:22', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1258', 'Philippines', '60.191.38.77', '2018-02-08 12:40:50', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1259', 'Philippines', '142.252.251.228', '2018-02-08 14:32:57', 'http://www.baidu.com/?rands=_52482117607031612043492', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1260', 'Philippines', '142.252.251.228', '2018-02-08 14:32:57', 'http://www.so.com/?rands=_8316257056822162161568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1261', 'Philippines', '157.52.156.49', '2018-02-08 16:24:58', 'http://204.44.65.4:54681/?rands=_790063783217457961790200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1262', 'Philippines', '139.162.119.197', '2018-02-08 20:52:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1263', 'Philippines', '212.47.243.192', '2018-02-08 23:16:20', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1264', 'Philippines', '142.252.251.228', '2018-02-08 23:57:15', 'http://www.so.com/?rands=_88414902343863703475128', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1265', 'Philippines', '142.252.251.228', '2018-02-08 23:57:18', 'http://www.baidu.com/?rands=_5593663213060199207150752', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1266', 'Philippines', '195.22.127.249', '2018-02-09 00:09:10', 'http://138.197.15.53:8080/.ftpconfig', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1267', 'Philippines', '195.22.127.249', '2018-02-09 00:09:11', 'http://138.197.15.53:8080/.remote-sync.json', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1268', 'Philippines', '195.22.127.249', '2018-02-09 00:09:11', 'http://138.197.15.53:8080/.env', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1269', 'Philippines', '74.115.214.137', '2018-02-09 00:19:35', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1270', 'Philippines', '89.248.172.90', '2018-02-09 00:20:42', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1271', 'Philippines', '89.248.172.90', '2018-02-09 00:20:42', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1272', 'Philippines', '52.53.208.147', '2018-02-09 02:30:08', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1273', 'Philippines', '52.174.52.33', '2018-02-09 04:02:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1274', 'Philippines', '60.191.38.77', '2018-02-09 05:07:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1275', 'Philippines', '107.170.229.67', '2018-02-09 05:34:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1276', 'Philippines', '157.52.156.49', '2018-02-09 08:10:12', 'http://204.44.65.4:54681/?rands=_11333136936815070502433120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1277', 'Philippines', '142.252.251.228', '2018-02-09 09:00:55', 'http://www.so.com/?rands=_732583375627933125304580', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1278', 'Philippines', '142.252.251.228', '2018-02-09 09:00:56', 'http://www.baidu.com/?rands=_1668115248903666662589120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1279', 'Philippines', '196.52.43.97', '2018-02-09 13:21:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1280', 'Philippines', '202.101.6.82', '2018-02-09 18:04:08', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1281', 'Philippines', '162.243.146.131', '2018-02-09 18:25:14', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1282', 'Philippines', '60.191.38.77', '2018-02-09 18:25:52', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1283', 'Philippines', '74.115.214.144', '2018-02-09 20:48:50', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1284', 'Philippines', '74.115.214.155', '2018-02-09 20:48:51', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1285', 'Philippines', '139.162.79.87', '2018-02-09 21:21:26', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1286', 'Philippines', '66.240.205.34', '2018-02-09 21:59:28', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1287', 'Philippines', '142.252.251.228', '2018-02-09 22:36:51', 'http://www.sogou.com/?rands=_787228587610417203034276', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1288', 'Philippines', '142.252.251.228', '2018-02-09 22:36:51', 'http://www.so.com/?rands=_2060832161038460604937424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1289', 'Philippines', '142.252.251.228', '2018-02-09 22:36:51', 'http://www.baidu.com/?rands=_346531008043002906719880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1290', 'Philippines', '141.212.122.81', '2018-02-09 23:30:52', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1291', 'Philippines', '157.52.156.49', '2018-02-10 00:51:49', 'http://204.44.65.4:54681/?rands=_68204028402233047873360', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1292', 'Philippines', '47.203.93.25', '2018-02-10 02:31:48', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1293', 'Philippines', '78.188.176.175', '2018-02-10 02:38:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1294', 'Philippines', '78.188.176.175', '2018-02-10 02:38:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1295', 'Philippines', '78.188.176.175', '2018-02-10 02:38:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1296', 'Philippines', '78.188.176.175', '2018-02-10 02:38:03', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1297', 'Philippines', '164.52.24.140', '2018-02-10 05:04:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1298', 'Philippines', '196.52.43.121', '2018-02-10 05:41:58', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1299', 'Philippines', '164.52.6.186', '2018-02-10 07:25:26', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1300', 'Philippines', '142.252.251.228', '2018-02-10 07:25:55', 'http://www.so.com/?rands=_4436102676012323344323760', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1301', 'Philippines', '142.252.251.228', '2018-02-10 07:25:55', 'http://www.baidu.com/?rands=_2274420162111088628171476', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1302', 'Philippines', '142.252.251.228', '2018-02-10 07:25:55', 'http://www.sogou.com/?rands=_13689712409951061790948', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1303', 'Philippines', '184.154.74.68', '2018-02-10 07:28:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1304', 'Philippines', '95.215.62.239', '2018-02-10 08:01:30', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1305', 'Philippines', '118.238.217.93', '2018-02-10 08:28:39', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1306', 'Philippines', '118.238.217.93', '2018-02-10 08:29:00', 'http://ssmcgroup.ph/Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1307', 'Philippines', '118.238.217.93', '2018-02-10 08:29:06', 'http://ssmcgroup.ph/Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1308', 'Philippines', '118.238.217.93', '2018-02-10 08:29:15', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1309', 'Philippines', '66.249.82.70', '2018-02-10 08:42:06', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1310', 'Philippines', '66.249.82.70', '2018-02-10 08:42:42', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1311', 'Philippines', '66.249.82.70', '2018-02-10 08:43:20', 'http://ssmcgroup.ph/Medical-ContactUs', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1312', 'Philippines', '157.52.156.49', '2018-02-10 13:54:12', 'http://204.44.65.4:54681/?rands=_89162844409905943139424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1313', 'Philippines', '208.77.20.27', '2018-02-10 21:17:30', 'http://azenv.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1314', 'Philippines', '195.22.127.234', '2018-02-11 00:04:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1315', 'Philippines', '142.252.251.228', '2018-02-11 01:33:48', 'http://www.baidu.com/?rands=_72527473045861561033515694800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1316', 'Philippines', '142.252.251.228', '2018-02-11 01:33:48', 'http://www.sogou.com/?rands=_2029558915262115308226060', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1317', 'Philippines', '157.52.156.49', '2018-02-11 02:59:56', 'http://204.44.65.4:54681/?rands=_14657530603708541299088', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1318', 'Philippines', '139.162.114.70', '2018-02-11 03:17:17', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1319', 'Philippines', '208.77.20.27', '2018-02-11 09:48:33', 'http://azenv.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1320', 'Philippines', '71.6.142.85', '2018-02-11 10:01:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1321', 'Philippines', '142.252.251.228', '2018-02-11 10:05:17', 'http://www.sogou.com/?rands=_1114565640020262156278848', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1322', 'Philippines', '142.252.251.228', '2018-02-11 10:05:17', 'http://www.baidu.com/?rands=_39602997443755586647270880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1323', 'Philippines', '142.252.251.228', '2018-02-11 10:05:18', 'http://www.so.com/?rands=_65601694086510751981568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1324', 'Philippines', '139.162.79.87', '2018-02-11 12:59:53', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1325', 'Philippines', '112.207.252.190', '2018-02-11 13:14:59', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1326', 'Philippines', '112.207.252.190', '2018-02-11 13:16:19', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1327', 'Philippines', '112.207.252.190', '2018-02-11 13:16:41', 'http://ssmcgroup.ph/Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1328', 'Philippines', '157.52.156.49', '2018-02-11 16:02:38', 'http://204.44.65.4:54681/?rands=_10395257056896904179520', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1329', 'Philippines', '51.15.191.81', '2018-02-11 16:49:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1330', 'Philippines', '172.104.108.109', '2018-02-11 17:20:40', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1331', 'Philippines', '52.90.141.106', '2018-02-11 19:00:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1332', 'Philippines', '187.36.200.146', '2018-02-11 22:33:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1333', 'Philippines', '187.36.200.146', '2018-02-11 22:33:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1334', 'Philippines', '212.47.243.192', '2018-02-11 23:02:28', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1335', 'Philippines', '208.77.20.27', '2018-02-11 23:37:10', 'http://azenv.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1336', 'Philippines', '142.252.251.228', '2018-02-12 04:18:51', 'http://www.so.com/?rands=_1448045690429108644322240', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1337', 'Philippines', '142.252.251.228', '2018-02-12 04:18:51', 'http://www.baidu.com/?rands=_579092742817667724393900', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1338', 'Philippines', '142.252.251.228', '2018-02-12 04:18:52', 'http://www.sogou.com/?rands=_13482184592837213504245600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1339', 'Philippines', '142.252.251.228', '2018-02-12 04:19:23', 'http://www.so.com/?rands=_3505150964813437931049112', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1340', 'Philippines', '142.252.251.228', '2018-02-12 04:19:23', 'http://www.baidu.com/?rands=_95328362302231881651680', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1341', 'Philippines', '142.252.251.228', '2018-02-12 04:19:23', 'http://www.sogou.com/?rands=_15995143376015069966210576', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1342', 'Philippines', '71.6.142.85', '2018-02-12 04:39:52', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1343', 'Philippines', '157.52.156.49', '2018-02-12 05:10:16', 'http://204.44.65.4:54681/?rands=_168778792014556963960400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1344', 'Philippines', '45.123.190.147', '2018-02-12 05:47:02', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1345', 'Philippines', '45.123.190.147', '2018-02-12 05:47:03', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1346', 'Philippines', '60.191.38.77', '2018-02-12 10:06:47', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1347', 'Philippines', '107.170.255.71', '2018-02-12 12:08:10', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1348', 'Philippines', '142.252.251.228', '2018-02-12 13:08:33', 'http://www.baidu.com/?rands=_112389885721418765632660', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1349', 'Philippines', '142.252.251.228', '2018-02-12 13:08:33', 'http://www.sogou.com/?rands=_63212720124543114444600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1350', 'Philippines', '107.170.225.249', '2018-02-12 14:27:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1351', 'Philippines', '209.126.136.4', '2018-02-12 17:38:38', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1352', 'Philippines', '157.52.156.49', '2018-02-12 18:18:07', 'http://204.44.65.4:54681/?rands=_247515504024846124286820', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1353', 'Philippines', '60.191.38.77', '2018-02-12 18:20:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1354', 'Philippines', '142.252.251.228', '2018-02-12 22:17:05', 'http://www.so.com/?rands=_175815061207248512598176', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1355', 'Philippines', '123.59.100.63', '2018-02-12 23:40:13', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1356', 'Philippines', '157.52.156.49', '2018-02-13 07:21:53', 'http://204.44.65.4:54681/?rands=_75251004821411004256760', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1357', 'Philippines', '94.102.49.193', '2018-02-13 09:57:55', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1358', 'Philippines', '60.191.38.77', '2018-02-13 12:36:33', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1359', 'Philippines', '172.104.108.109', '2018-02-13 15:49:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1360', 'Philippines', '142.252.251.228', '2018-02-13 16:07:24', 'http://www.so.com/?rands=_1217518982823160800567744', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1361', 'Philippines', '142.252.251.228', '2018-02-13 16:07:24', 'http://www.baidu.com/?rands=_420614557321281291990828', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1362', 'Philippines', '142.252.251.228', '2018-02-13 16:07:24', 'http://www.sogou.com/?rands=_113046272126821641649360', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1363', 'Philippines', '139.162.119.197', '2018-02-13 17:18:40', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1364', 'Philippines', '139.162.79.87', '2018-02-13 17:39:08', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1365', 'Philippines', '157.52.156.49', '2018-02-13 20:25:54', 'http://204.44.65.4:54681/?rands=_52854910361530837707728', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1366', 'Philippines', '60.191.38.77', '2018-02-13 23:57:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1367', 'Philippines', '196.52.43.115', '2018-02-14 00:59:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1368', 'Philippines', '142.252.251.228', '2018-02-14 01:02:16', 'http://www.baidu.com/?rands=_8106156198430918518160100', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1369', 'Philippines', '142.252.251.228', '2018-02-14 01:02:16', 'http://www.sogou.com/?rands=_2316852217629770204654720', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1370', 'Philippines', '142.252.251.228', '2018-02-14 01:02:16', 'http://www.so.com/?rands=_346531008043002906488160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1371', 'Philippines', '209.126.136.4', '2018-02-14 01:17:48', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1372', 'Philippines', '89.248.172.90', '2018-02-14 08:16:33', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1373', 'Philippines', '157.52.156.49', '2018-02-14 09:32:11', 'http://204.44.65.4:54681/?rands=_19701037280183534514536', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1374', 'Philippines', '196.52.43.61', '2018-02-14 09:38:57', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1375', 'Philippines', '204.44.65.4', '2018-02-14 11:33:49', 'http://www.baidu.com/?rands=_389471527418136862089600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1376', 'Philippines', '60.191.38.77', '2018-02-14 15:04:30', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1377', 'Philippines', '198.199.113.84', '2018-02-14 15:32:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1378', 'Philippines', '204.44.65.4', '2018-02-14 18:08:39', 'http://www.baidu.com/?rands=_175810758005225671855840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1379', 'Philippines', '47.203.89.156', '2018-02-14 20:02:52', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1380', 'Philippines', '198.7.62.204', '2018-02-14 20:59:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1381', 'Philippines', '198.7.62.204', '2018-02-14 20:59:16', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1382', 'Philippines', '198.7.62.204', '2018-02-14 20:59:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1383', 'Philippines', '157.52.156.49', '2018-02-14 22:36:01', 'http://204.44.65.4:54681/?rands=_1216298001015510241202676', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1384', 'Philippines', '139.162.114.70', '2018-02-15 01:17:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1385', 'Philippines', '35.230.67.210', '2018-02-15 01:55:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1386', 'Philippines', '190.94.136.91', '2018-02-15 04:18:51', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1387', 'Philippines', '190.94.136.91', '2018-02-15 04:18:52', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1388', 'Philippines', '190.94.136.91', '2018-02-15 04:18:54', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1389', 'Philippines', '190.94.136.91', '2018-02-15 04:18:54', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1390', 'Philippines', '190.94.136.91', '2018-02-15 04:18:55', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1391', 'Philippines', '89.248.172.90', '2018-02-15 06:25:28', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1392', 'Philippines', '89.248.172.90', '2018-02-15 06:25:30', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1393', 'Philippines', '204.44.65.4', '2018-02-15 06:58:56', 'http://www.baidu.com/?rands=_9105369818857724153624', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1394', 'Philippines', '164.52.6.186', '2018-02-15 11:10:05', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1395', 'Philippines', '157.52.156.49', '2018-02-15 11:43:51', 'http://204.44.65.4:54681/?rands=_154906144001350153795944', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1396', 'Philippines', '60.191.38.77', '2018-02-15 11:45:21', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1397', 'Philippines', '164.52.24.140', '2018-02-15 12:17:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1398', 'Philippines', '31.131.249.207', '2018-02-15 13:25:54', 'http://azenv.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1399', 'Philippines', '62.4.14.198', '2018-02-15 15:45:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1400', 'Philippines', '192.241.208.240', '2018-02-15 16:39:22', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1401', 'Philippines', '155.94.88.138', '2018-02-15 18:09:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1402', 'Philippines', '107.170.236.113', '2018-02-15 18:39:48', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1403', 'Philippines', '204.44.65.4', '2018-02-15 18:59:25', 'http://www.baidu.com/?rands=_16746986320715584742224', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1404', 'Philippines', '87.218.34.163', '2018-02-15 22:37:25', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1405', 'Philippines', '87.218.34.163', '2018-02-15 22:37:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1406', 'Philippines', '87.218.34.163', '2018-02-15 22:37:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1407', 'Philippines', '87.218.34.163', '2018-02-15 22:37:34', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1408', 'Philippines', '87.218.34.163', '2018-02-15 22:37:35', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1409', 'Philippines', '89.248.172.90', '2018-02-15 23:44:33', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1410', 'Philippines', '89.248.172.90', '2018-02-15 23:44:33', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1411', 'Philippines', '157.52.156.49', '2018-02-16 00:48:50', 'http://204.44.65.4:54681/?rands=_75236128417128803696660', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1412', 'Philippines', '204.44.65.4', '2018-02-16 01:06:21', 'http://www.baidu.com/?rands=_164521363600171780689216', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1413', 'Philippines', '139.162.79.87', '2018-02-16 01:26:29', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1414', 'Philippines', '196.52.43.55', '2018-02-16 01:58:46', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1415', 'Philippines', '198.143.133.154', '2018-02-16 03:27:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1416', 'Philippines', '42.51.194.26', '2018-02-16 03:54:27', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1417', 'Philippines', '42.51.194.26', '2018-02-16 03:54:27', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1418', 'Philippines', '172.104.108.109', '2018-02-16 04:13:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1419', 'Philippines', '42.51.194.26', '2018-02-16 05:46:18', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1420', 'Philippines', '204.44.65.4', '2018-02-16 06:53:09', 'http://www.baidu.com/?rands=_1096297876024021904041452', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1421', 'Philippines', '204.44.65.4', '2018-02-16 08:30:13', 'http://www.baidu.com/?rands=_6948112267622715645774840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1422', 'Philippines', '204.44.65.4', '2018-02-16 10:06:36', 'http://www.baidu.com/?rands=_328847887219809033238872', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1423', 'Philippines', '222.212.88.20', '2018-02-16 10:34:30', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1424', 'Philippines', '119.29.142.188', '2018-02-16 11:14:57', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1425', 'Philippines', '119.29.142.188', '2018-02-16 11:15:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1426', 'Philippines', '204.44.65.4', '2018-02-16 11:43:49', 'http://www.baidu.com/?rands=_84784109325197441275920', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1427', 'Philippines', '155.94.88.138', '2018-02-16 12:52:38', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1428', 'Philippines', '60.191.38.77', '2018-02-16 12:53:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1429', 'Philippines', '204.44.65.4', '2018-02-16 13:16:27', 'http://www.baidu.com/?rands=_2282933221847706380172', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1430', 'Philippines', '157.52.156.49', '2018-02-16 13:51:25', 'http://204.44.65.4:54681/?rands=_6331023564883397860579572', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1431', 'Philippines', '196.52.43.119', '2018-02-16 15:27:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1432', 'Philippines', '35.231.20.10', '2018-02-16 15:54:32', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1433', 'Philippines', '195.22.127.249', '2018-02-16 18:46:50', 'http://138.197.15.53:8080/.env', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1434', 'Philippines', '212.237.43.90', '2018-02-16 19:38:22', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1435', 'Philippines', '89.248.172.90', '2018-02-17 00:41:41', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1436', 'Philippines', '141.212.122.96', '2018-02-17 01:29:48', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1437', 'Philippines', '157.52.156.49', '2018-02-17 02:57:00', 'http://204.44.65.4:54681/?rands=_9630100440201443883813920000', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1438', 'Philippines', '155.94.88.138', '2018-02-17 04:01:05', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1439', 'Philippines', '45.249.245.182', '2018-02-17 06:50:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1440', 'Philippines', '204.44.65.4', '2018-02-17 07:07:49', 'http://www.baidu.com/?rands=_477657720636019625528380', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1441', 'Philippines', '150.129.69.62', '2018-02-17 10:48:06', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1442', 'Philippines', '139.162.114.70', '2018-02-17 11:58:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1443', 'Philippines', '157.52.156.49', '2018-02-17 16:01:26', 'http://204.44.65.4:54681/?rands=_13955838372626136636192', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1444', 'Philippines', '204.44.65.4', '2018-02-17 16:46:07', 'http://www.baidu.com/?rands=_383658528823224383571064', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1445', 'Philippines', '89.248.172.90', '2018-02-17 17:59:29', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1446', 'Philippines', '89.248.172.90', '2018-02-17 17:59:30', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1447', 'Philippines', '139.162.79.87', '2018-02-17 18:09:37', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1448', 'Philippines', '60.191.38.77', '2018-02-17 21:33:47', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1449', 'Philippines', '60.191.38.77', '2018-02-17 23:45:48', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1450', 'Philippines', '47.203.94.124', '2018-02-18 01:22:56', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1451', 'Philippines', '204.44.65.4', '2018-02-18 02:00:53', 'http://www.baidu.com/?rands=_267628015223431504554080', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1452', 'Philippines', '177.143.152.182', '2018-02-18 03:03:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1453', 'Philippines', '177.143.152.182', '2018-02-18 03:04:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1454', 'Philippines', '157.52.156.49', '2018-02-18 05:00:38', 'http://204.44.65.4:54681/?rands=_91285340724265282187876', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1455', 'Philippines', '204.44.65.4', '2018-02-18 06:32:00', 'http://www.baidu.com/?rands=_45009250721461150836004', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1456', 'Philippines', '45.125.66.153', '2018-02-18 07:24:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1457', 'Philippines', '45.125.66.153', '2018-02-18 07:24:57', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1458', 'Philippines', '45.125.66.153', '2018-02-18 07:26:10', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1459', 'Philippines', '45.125.66.153', '2018-02-18 07:26:10', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1460', 'Philippines', '155.94.88.138', '2018-02-18 07:47:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1461', 'Philippines', '118.123.12.177', '2018-02-18 09:25:52', 'http://www.baidu.com/?rands=_25587100823352753477960', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1462', 'Philippines', '118.123.12.177', '2018-02-18 09:25:55', 'http://www.search.com/?rands=_347463455611988812887420', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1463', 'Philippines', '118.123.12.177', '2018-02-18 09:26:16', 'http://www.so.com/?rands=_94508746884438773353616', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1464', 'Philippines', '142.44.241.206', '2018-02-18 09:59:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1465', 'Philippines', '178.79.163.76', '2018-02-18 17:12:57', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1466', 'Philippines', '157.52.156.49', '2018-02-18 18:04:32', 'http://204.44.65.4:54681/?rands=_481213640767078505027232', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1467', 'Philippines', '107.170.236.113', '2018-02-18 20:59:10', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1468', 'Philippines', '89.248.172.90', '2018-02-18 21:18:12', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1469', 'Philippines', '185.100.87.248', '2018-02-18 22:18:31', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1470', 'Philippines', '185.100.87.248', '2018-02-18 22:20:29', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1471', 'Philippines', '178.73.215.171', '2018-02-18 23:13:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1472', 'Philippines', '89.248.172.90', '2018-02-19 00:44:13', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1473', 'Philippines', '204.44.65.4', '2018-02-19 06:17:19', 'http://www.baidu.com/?rands=_2028837277635301697286240', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1474', 'Philippines', '157.52.156.49', '2018-02-19 07:05:25', 'http://204.44.65.4:54681/?rands=_739986875626971891213248', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1475', 'Philippines', '107.170.254.103', '2018-02-19 09:48:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1476', 'Philippines', '204.44.65.4', '2018-02-19 09:52:34', 'http://www.baidu.com/?rands=_1032027851215769261747800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1477', 'Philippines', '60.191.38.77', '2018-02-19 11:39:37', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1478', 'Philippines', '124.106.23.134', '2018-02-19 11:45:28', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1479', 'Philippines', '124.106.23.134', '2018-02-19 11:46:10', 'http://ssmcgroup.ph/Welcome', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1480', 'Philippines', '124.106.23.134', '2018-02-19 11:46:16', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1481', 'Philippines', '60.191.38.77', '2018-02-19 12:32:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1482', 'Philippines', '185.244.148.179', '2018-02-19 13:23:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1483', 'Philippines', '89.248.172.76', '2018-02-19 16:11:00', 'http://unicc.at/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1484', 'Philippines', '107.170.255.71', '2018-02-19 16:55:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1485', 'Philippines', '46.17.46.152', '2018-02-19 18:34:30', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1486', 'Philippines', '104.128.144.131', '2018-02-19 18:43:33', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1487', 'Philippines', '196.52.43.129', '2018-02-19 19:38:02', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1488', 'Philippines', '157.52.156.49', '2018-02-19 20:08:46', 'http://204.44.65.4:54681/?rands=_94036128418556203808680', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1489', 'Philippines', '79.137.70.1', '2018-02-19 20:33:43', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1490', 'Philippines', '209.126.136.4', '2018-02-19 21:17:58', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1491', 'Philippines', '47.203.94.124', '2018-02-19 21:57:04', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1492', 'Philippines', '204.44.65.4', '2018-02-19 23:32:21', 'http://www.baidu.com/?rands=_513032949030524673649128', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1493', 'Philippines', '196.52.43.65', '2018-02-20 00:13:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1494', 'Philippines', '89.248.172.90', '2018-02-20 02:08:37', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1495', 'Philippines', '204.44.65.4', '2018-02-20 05:28:50', 'http://www.baidu.com/?rands=_5545113484015061865312048', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1496', 'Philippines', '172.104.108.109', '2018-02-20 05:56:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1497', 'Philippines', '157.52.156.49', '2018-02-20 09:11:33', 'http://204.44.65.4:54681/?rands=_157503881428154392010539936', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1498', 'Philippines', '204.44.65.4', '2018-02-20 10:04:48', 'http://www.baidu.com/?rands=_9714130416015572852630400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1499', 'Philippines', '204.44.65.4', '2018-02-20 11:42:13', 'http://www.baidu.com/?rands=_6948107386420822675398220', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1500', 'Philippines', '164.52.6.186', '2018-02-20 14:55:06', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1501', 'Philippines', '85.96.222.73', '2018-02-20 18:10:40', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1502', 'Philippines', '204.44.65.4', '2018-02-20 20:03:55', 'http://www.baidu.com/?rands=_6948102505221453665398220', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1503', 'Philippines', '208.100.26.230', '2018-02-20 20:10:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1504', 'Philippines', '208.100.26.230', '2018-02-20 20:12:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1505', 'Philippines', '157.52.156.49', '2018-02-20 22:19:26', 'http://204.44.65.4:54681/?rands=_7104327577621174925712332540', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1506', 'Philippines', '89.248.172.90', '2018-02-20 22:49:38', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1507', 'Philippines', '89.248.172.90', '2018-02-20 22:49:41', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1508', 'Philippines', '139.162.108.53', '2018-02-20 23:46:40', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1509', 'Philippines', '183.136.202.244', '2018-02-21 01:13:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1510', 'Philippines', '202.91.248.171', '2018-02-21 02:32:54', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1511', 'Philippines', '202.91.248.171', '2018-02-21 02:32:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1512', 'Philippines', '202.91.248.171', '2018-02-21 02:52:06', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1513', 'Philippines', '202.91.248.171', '2018-02-21 02:52:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1514', 'Philippines', '209.126.136.4', '2018-02-21 03:43:40', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1515', 'Philippines', '89.248.172.90', '2018-02-21 03:57:37', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1516', 'Philippines', '89.248.172.90', '2018-02-21 03:57:37', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1517', 'Philippines', '204.44.65.4', '2018-02-21 06:39:14', 'http://www.baidu.com/?rands=_478053460024809402243200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1518', 'Philippines', '204.44.65.4', '2018-02-21 10:43:26', 'http://www.baidu.com/?rands=_145534819801681695353056', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1519', 'Philippines', '157.52.156.49', '2018-02-21 11:23:12', 'http://204.44.65.4:54681/?rands=_1846635209614260322519928', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1520', 'Philippines', '139.162.79.87', '2018-02-21 13:35:01', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1521', 'Philippines', '185.110.132.232', '2018-02-21 13:50:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1522', 'Philippines', '93.174.95.106', '2018-02-21 15:04:59', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1523', 'Philippines', '204.44.65.4', '2018-02-21 16:39:09', 'http://www.baidu.com/?rands=_513034518031449663736012', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1524', 'Philippines', '47.203.94.124', '2018-02-21 17:56:18', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1525', 'Philippines', '89.248.172.90', '2018-02-21 19:17:44', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1526', 'Philippines', '204.44.65.4', '2018-02-21 20:22:17', 'http://www.baidu.com/?rands=_2052116548813039322323392', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1527', 'Philippines', '118.123.12.177', '2018-02-21 22:26:59', 'http://www.search.com/?rands=_7492418242574262150652', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1528', 'Philippines', '118.123.12.177', '2018-02-21 22:27:00', 'http://www.so.com/?rands=_7235628008822401900992', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1529', 'Philippines', '118.123.12.177', '2018-02-21 22:27:00', 'http://www.baidu.com/?rands=_347478099215774753891740', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1530', 'Philippines', '190.216.2.82', '2018-02-21 23:31:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1531', 'Philippines', '190.216.2.82', '2018-02-21 23:31:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1532', 'Philippines', '190.216.2.82', '2018-02-21 23:31:47', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1533', 'Philippines', '190.216.2.82', '2018-02-21 23:31:48', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1534', 'Philippines', '190.216.2.82', '2018-02-21 23:31:49', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1535', 'Philippines', '157.52.156.49', '2018-02-22 00:30:08', 'http://204.44.65.4:54681/?rands=_54181883163494703555680', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1536', 'Philippines', '107.170.234.222', '2018-02-22 00:34:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1537', 'Philippines', '187.189.90.250', '2018-02-22 02:11:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1538', 'Philippines', '188.62.197.86', '2018-02-22 03:01:13', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1539', 'Philippines', '60.191.38.77', '2018-02-22 04:47:58', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1540', 'Philippines', '204.44.65.4', '2018-02-22 04:50:10', 'http://www.baidu.com/?rands=_22328937004045171243746464', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1541', 'Philippines', '176.32.33.238', '2018-02-22 05:02:54', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1542', 'Philippines', '204.44.65.4', '2018-02-22 09:22:20', 'http://www.baidu.com/?rands=_14176755496566697120064', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1543', 'Philippines', '141.212.122.112', '2018-02-22 10:02:50', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1544', 'Philippines', '204.44.65.4', '2018-02-22 10:56:14', 'http://www.baidu.com/?rands=_120582544014556963405944', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1545', 'Philippines', '35.202.106.6', '2018-02-22 11:09:02', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1546', 'Philippines', '157.52.156.49', '2018-02-22 13:36:13', 'http://204.44.65.4:54681/?rands=_1919498880011761924992816', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1547', 'Philippines', '107.170.252.143', '2018-02-22 13:58:25', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1548', 'Philippines', '204.44.65.4', '2018-02-22 14:20:18', 'http://www.baidu.com/?rands=_7260143180412544354265488', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1549', 'Philippines', '204.44.65.4', '2018-02-22 15:55:03', 'http://www.baidu.com/?rands=_195371134268827394830584', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1550', 'Philippines', '5.188.203.125', '2018-02-22 16:02:12', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1551', 'Philippines', '104.244.78.239', '2018-02-22 20:33:56', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1552', 'Philippines', '204.44.65.4', '2018-02-22 20:40:00', 'http://www.baidu.com/?rands=_886056662243490790048', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1553', 'Philippines', '216.165.248.218', '2018-02-22 21:10:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1554', 'Philippines', '216.165.248.218', '2018-02-22 21:10:04', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1555', 'Philippines', '107.170.255.200', '2018-02-22 23:34:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1556', 'Philippines', '78.129.130.51', '2018-02-23 00:04:52', 'http://bakuxeber.info/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1557', 'Philippines', '204.44.65.4', '2018-02-23 00:49:31', 'http://www.baidu.com/?rands=_84784109324872601213680', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1558', 'Philippines', '80.82.77.139', '2018-02-23 10:12:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1559', 'Philippines', '54.234.97.25', '2018-02-23 10:35:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1560', 'Philippines', '204.44.65.4', '2018-02-23 10:50:55', 'http://www.baidu.com/?rands=_1903859502421132467904', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1561', 'Philippines', '204.44.65.4', '2018-02-23 12:26:03', 'http://www.baidu.com/?rands=_879072006225314395045820', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1562', 'Philippines', '93.174.93.241', '2018-02-23 12:28:26', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1563', 'Philippines', '134.119.182.6', '2018-02-23 12:45:10', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1564', 'Philippines', '185.140.108.3', '2018-02-23 13:30:04', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1565', 'Philippines', '200.196.245.233', '2018-02-23 14:27:34', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1566', 'Philippines', '89.248.172.90', '2018-02-23 15:38:42', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1567', 'Philippines', '157.52.156.49', '2018-02-23 15:48:40', 'http://204.44.65.4:54681/?rands=_1167087068823092681406856', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1568', 'Philippines', '141.212.122.81', '2018-02-23 16:03:08', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1569', 'Philippines', '89.248.172.90', '2018-02-23 18:42:03', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1570', 'Philippines', '142.252.251.228', '2018-02-23 20:22:14', 'http://www.baidu.com/?rands=_739913975643557373612764380', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1571', 'Philippines', '142.252.251.228', '2018-02-23 20:22:14', 'http://142.252.251.228:19946/?rands=_139551232900827394812912', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1572', 'Philippines', '60.191.38.77', '2018-02-23 20:35:26', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1573', 'Philippines', '204.44.65.4', '2018-02-23 23:05:26', 'http://www.baidu.com/?rands=_14004114277829309941790544', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1574', 'Philippines', '89.248.172.90', '2018-02-23 23:16:53', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1575', 'Philippines', '89.248.172.90', '2018-02-23 23:16:54', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1576', 'Philippines', '196.52.43.66', '2018-02-24 01:58:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1577', 'Philippines', '204.44.65.4', '2018-02-24 03:33:52', 'http://www.baidu.com/?rands=_1560361264017560535304544', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1578', 'Philippines', '157.52.156.49', '2018-02-24 04:57:06', 'http://204.44.65.4:54681/?rands=_1218428769014762401412424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1579', 'Philippines', '107.155.132.171', '2018-02-24 05:43:07', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1580', 'Philippines', '107.155.152.107', '2018-02-24 06:37:13', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1581', 'Philippines', '142.252.251.228', '2018-02-24 07:30:45', 'http://www.baidu.com/?rands=_1798262923419160702249588', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1582', 'Philippines', '142.252.251.228', '2018-02-24 07:30:45', 'http://142.252.251.228:19946/?rands=_70654325605035021182560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1583', 'Philippines', '114.67.224.210', '2018-02-24 10:05:55', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1584', 'Philippines', '114.67.224.210', '2018-02-24 10:06:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1585', 'Philippines', '60.191.38.77', '2018-02-24 10:35:02', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1586', 'Philippines', '107.155.133.180', '2018-02-24 11:13:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1587', 'Philippines', '204.44.65.4', '2018-02-24 11:31:20', 'http://www.baidu.com/?rands=_1704516364503002760579572', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1588', 'Philippines', '204.44.65.4', '2018-02-24 13:07:38', 'http://www.baidu.com/?rands=_119159346102391301740960', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1589', 'Philippines', '139.162.79.87', '2018-02-24 15:55:40', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1590', 'Philippines', '89.248.172.90', '2018-02-24 17:10:22', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1591', 'Philippines', '157.52.156.49', '2018-02-24 18:04:28', 'http://204.44.65.4:54681/?rands=_2275734802470262935812', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1592', 'Philippines', '142.252.251.228', '2018-02-24 18:06:56', 'http://www.baidu.com/?rands=_5545118888015061865064976', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1593', 'Philippines', '204.44.65.4', '2018-02-24 19:33:02', 'http://www.baidu.com/?rands=_6092348302922048587600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1594', 'Philippines', '118.123.12.177', '2018-02-24 21:57:05', 'http://www.baidu.com/?rands=_95975438406983643044400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1595', 'Philippines', '118.123.12.177', '2018-02-24 21:57:05', 'http://www.so.com/?rands=_2250486880730575428720', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1596', 'Philippines', '47.203.89.115', '2018-02-24 23:06:08', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1597', 'Philippines', '204.44.65.4', '2018-02-25 01:03:11', 'http://www.baidu.com/?rands=_358242756027443523572184', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1598', 'Philippines', '219.142.240.17', '2018-02-25 01:21:58', 'http://www.123cha.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1599', 'Philippines', '123.138.72.203', '2018-02-25 01:21:58', 'http://www.wujieliulan.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1600', 'Philippines', '125.76.61.94', '2018-02-25 01:22:04', 'http://www.epochtimes.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1601', 'Philippines', '175.42.3.153', '2018-02-25 01:22:06', 'http://www.ip.cn/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1602', 'Philippines', '112.117.16.232', '2018-02-25 01:22:07', 'http://boxun.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1603', 'Philippines', '204.44.65.4', '2018-02-25 05:36:51', 'http://www.baidu.com/?rands=_9875103034432159403222360', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1604', 'Philippines', '60.191.38.77', '2018-02-25 05:46:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1605', 'Philippines', '60.191.38.77', '2018-02-25 06:42:36', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1606', 'Philippines', '157.52.156.49', '2018-02-25 07:07:53', 'http://204.44.65.4:54681/?rands=_694892742818298714644980', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1607', 'Philippines', '204.44.65.4', '2018-02-25 07:11:35', 'http://www.baidu.com/?rands=_112389885721283644915776', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1608', 'Philippines', '204.44.65.4', '2018-02-25 08:44:35', 'http://www.baidu.com/?rands=_1337452512016659995088032', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1609', 'Philippines', '204.44.65.4', '2018-02-25 10:50:19', 'http://www.baidu.com/?rands=_106402059221754496335496', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1610', 'Philippines', '139.162.119.197', '2018-02-25 13:15:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1611', 'Philippines', '142.252.251.228', '2018-02-25 14:46:56', 'http://142.252.251.228:19946/?rands=_37509737601509855857440', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1612', 'Philippines', '142.252.251.228', '2018-02-25 14:47:00', 'http://www.baidu.com/?rands=_14189196002028435442133780', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1613', 'Philippines', '204.44.65.4', '2018-02-25 15:32:31', 'http://www.baidu.com/?rands=_83553506807583401383816', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1614', 'Philippines', '89.248.172.90', '2018-02-25 15:54:13', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1615', 'Philippines', '89.248.172.90', '2018-02-25 15:54:16', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1616', 'Philippines', '164.52.6.186', '2018-02-25 18:40:11', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1617', 'Philippines', '157.52.156.49', '2018-02-25 20:12:32', 'http://204.44.65.4:54681/?rands=_783097876026346603942880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1618', 'Philippines', '46.243.189.111', '2018-02-25 23:05:26', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1619', 'Philippines', '142.252.251.228', '2018-02-26 00:25:58', 'http://142.252.251.228:19946/?rands=_8095130416015070502498880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1620', 'Philippines', '54.183.224.231', '2018-02-26 02:08:10', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1621', 'Philippines', '164.52.24.140', '2018-02-26 02:15:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1622', 'Philippines', '187.180.186.66', '2018-02-26 08:21:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1623', 'Philippines', '187.180.186.66', '2018-02-26 08:21:44', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1624', 'Philippines', '157.52.156.49', '2018-02-26 09:17:41', 'http://204.44.65.4:54681/?rands=_382437422018193561570240', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1625', 'Philippines', '142.252.251.228', '2018-02-26 10:07:04', 'http://142.252.251.228:19946/?rands=_1177624398026755203405120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1626', 'Philippines', '60.191.38.77', '2018-02-26 10:07:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1627', 'Philippines', '204.44.65.4', '2018-02-26 10:08:43', 'http://www.baidu.com/?rands=_16746986320715584724552', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1628', 'Philippines', '176.32.33.238', '2018-02-26 11:39:28', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1629', 'Philippines', '204.44.65.4', '2018-02-26 11:46:15', 'http://www.baidu.com/?rands=_17058129635496185796600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1630', 'Philippines', '204.44.65.4', '2018-02-26 13:23:47', 'http://www.baidu.com/?rands=_10962127238834095605618604', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1631', 'Philippines', '67.79.65.102', '2018-02-26 13:30:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1632', 'Philippines', '118.123.12.177', '2018-02-26 15:05:07', 'http://www.search.com/?rands=_609219917011809921140804', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1633', 'Philippines', '118.123.12.177', '2018-02-26 15:05:11', 'http://www.search.com/?rands=_1055230808414260322438640', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1634', 'Philippines', '118.123.12.177', '2018-02-26 15:05:12', 'http://www.so.com/?rands=_185886144001257039752920', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1635', 'Philippines', '118.123.12.177', '2018-02-26 15:05:20', 'http://www.baidu.com/?rands=_395044157613782601432160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1636', 'Philippines', '118.123.12.177', '2018-02-26 15:05:33', 'http://www.baidu.com/?rands=_37892846522232361857396', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1637', 'Philippines', '60.191.38.77', '2018-02-26 18:22:15', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1638', 'Philippines', '172.104.108.109', '2018-02-26 18:41:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1639', 'Philippines', '142.252.251.228', '2018-02-26 19:36:00', 'http://www.baidu.com/?rands=_14004152370437303562387392', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1640', 'Philippines', '142.252.251.228', '2018-02-26 19:36:01', 'http://142.252.251.228:19946/?rands=_7260169213215411635100040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1641', 'Philippines', '209.126.136.4', '2018-02-26 20:17:05', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1642', 'Philippines', '157.52.156.49', '2018-02-26 22:25:30', 'http://204.44.65.4:54681/?rands=_1448022845214554322327360', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1643', 'Philippines', '196.52.43.111', '2018-02-27 00:48:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1644', 'Philippines', '204.44.65.4', '2018-02-27 03:07:27', 'http://www.baidu.com/?rands=_481212341646649504787840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1645', 'Philippines', '60.191.38.78', '2018-02-27 04:25:43', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1646', 'Philippines', '142.252.251.228', '2018-02-27 05:47:01', 'http://www.baidu.com/?rands=_83553506808272801482660', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1647', 'Philippines', '142.252.251.228', '2018-02-27 05:47:01', 'http://142.252.251.228:19946/?rands=_4351837802272704446576', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1648', 'Philippines', '185.25.249.77', '2018-02-27 06:12:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1649', 'Philippines', '204.44.65.4', '2018-02-27 08:39:10', 'http://www.baidu.com/?rands=_12162117601218741541474248', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1650', 'Philippines', '47.203.89.115', '2018-02-27 14:49:28', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1651', 'Philippines', '94.242.228.4', '2018-02-27 18:38:55', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1652', 'Philippines', '204.44.65.4', '2018-02-27 19:33:44', 'http://www.baidu.com/?rands=_1798257451819160702301904', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1653', 'Philippines', '216.244.83.210', '2018-02-27 19:46:48', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1654', 'Philippines', '139.162.79.87', '2018-02-27 20:27:44', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1655', 'Philippines', '185.17.157.198', '2018-02-27 21:29:01', 'http://cis470-team3.com/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1656', 'Philippines', '172.104.108.109', '2018-02-27 23:56:53', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1657', 'Philippines', '157.52.156.49', '2018-02-28 00:34:18', 'http://204.44.65.4:54681/?rands=_9105326310673926120408', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1658', 'Philippines', '204.44.65.4', '2018-02-28 01:37:13', 'http://www.baidu.com/?rands=_91055220961133421190992', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1659', 'Philippines', '139.162.114.70', '2018-02-28 01:53:30', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1660', 'Philippines', '5.188.87.7', '2018-02-28 01:57:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1661', 'Philippines', '155.94.88.155', '2018-02-28 03:59:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1662', 'Philippines', '209.126.136.4', '2018-02-28 06:37:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1663', 'Philippines', '89.248.172.90', '2018-02-28 07:21:48', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1664', 'Philippines', '204.44.65.4', '2018-02-28 09:22:18', 'http://www.baidu.com/?rands=_131119505501351205325424', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1665', 'Philippines', '139.162.114.70', '2018-02-28 11:52:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1666', 'Philippines', '157.52.156.49', '2018-02-28 13:38:01', 'http://204.44.65.4:54681/?rands=_478040095018193561570240', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1667', 'Philippines', '204.44.65.4', '2018-02-28 14:16:00', 'http://www.baidu.com/?rands=_10632701532500802102912', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1668', 'Philippines', '60.191.38.77', '2018-02-28 14:47:01', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1669', 'Philippines', '60.191.38.77', '2018-02-28 14:47:03', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1670', 'Philippines', '121.58.211.162', '2018-03-04 02:05:16', 'http://ssmcgroup.ph:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1671', 'Philippines', '121.58.211.162', '2018-03-04 02:05:16', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1672', 'Philippines', '121.58.211.162', '2018-03-04 02:05:28', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1673', 'Philippines', '121.58.211.162', '2018-03-04 02:05:29', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1674', 'Philippines', '121.58.211.162', '2018-03-04 02:05:34', 'http://ssmcgroup.ph:8080/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1675', 'Philippines', '121.58.211.162', '2018-03-04 02:06:25', 'http://ssmcgroup.ph:8080/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1676', 'Philippines', '204.44.65.4', '2018-03-04 03:16:52', 'http://www.baidu.com/?rands=_1737634267822493043657280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1677', 'Philippines', '176.32.33.238', '2018-03-04 05:21:15', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1678', 'Philippines', '5.188.9.50', '2018-03-04 12:56:44', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1679', 'Philippines', '141.105.71.129', '2018-03-04 21:05:59', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1680', 'Philippines', '179.214.185.76', '2018-03-04 22:44:24', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1681', 'Philippines', '179.214.185.76', '2018-03-04 22:44:44', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1682', 'Philippines', '155.94.88.155', '2018-03-04 23:45:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1683', 'Philippines', '89.248.172.90', '2018-03-05 05:06:50', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1684', 'Philippines', '118.123.12.177', '2018-03-05 08:18:46', 'http://www.search.com/?rands=_19473764608775901044800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1685', 'Philippines', '204.44.65.4', '2018-03-05 09:02:06', 'http://www.baidu.com/?rands=_886056662243490792192', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1686', 'Philippines', '209.126.136.4', '2018-03-05 14:31:07', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1687', 'Philippines', '155.94.88.155', '2018-03-05 15:22:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1688', 'Philippines', '176.32.33.238', '2018-03-05 16:09:01', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1689', 'Philippines', '142.252.251.228', '2018-03-05 16:31:08', 'http://142.252.251.228:19946/?rands=_14659682204888531716652', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1690', 'Philippines', '45.77.24.16', '2018-03-05 19:09:27', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1691', 'Philippines', '118.123.12.177', '2018-03-05 23:21:05', 'http://www.baidu.com/?rands=_48407159025734561947288', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1692', 'Philippines', '118.123.12.177', '2018-03-05 23:21:05', 'http://www.so.com/?rands=_8991246222788970941688', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1693', 'Philippines', '118.123.12.177', '2018-03-05 23:21:05', 'http://www.search.com/?rands=_238825653616294592126300', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1694', 'Philippines', '204.44.65.4', '2018-03-06 00:16:31', 'http://www.baidu.com/?rands=_1448039163224477723906640', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1695', 'Philippines', '192.99.142.235', '2018-03-06 03:53:30', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1696', 'Philippines', '157.52.156.49', '2018-03-06 08:24:26', 'http://204.44.65.4:54681/?rands=_1472015526016722002213328', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1697', 'Philippines', '142.252.251.228', '2018-03-06 10:57:15', 'http://142.252.251.228:19946/?rands=_769539225036999604604852', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1698', 'Philippines', '142.252.251.228', '2018-03-06 10:57:21', 'http://www.baidu.com/?rands=_1461015709923002760591400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1699', 'Philippines', '204.44.65.4', '2018-03-06 15:22:10', 'http://www.baidu.com/?rands=_109005421608546704143672', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1700', 'Philippines', '207.246.70.24', '2018-03-06 16:06:21', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1701', 'Philippines', '46.9.3.118', '2018-03-06 17:02:15', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1702', 'Philippines', '142.252.251.228', '2018-03-06 20:10:12', 'http://142.252.251.228:19946/?rands=_963092296418606752436000', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1703', 'Philippines', '142.252.251.228', '2018-03-06 20:10:12', 'http://www.baidu.com/?rands=_69547664014556514070444', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1704', 'Philippines', '141.212.122.48', '2018-03-07 00:41:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1705', 'Philippines', '89.248.172.90', '2018-03-07 01:29:15', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1706', 'Philippines', '196.52.43.54', '2018-03-07 04:40:53', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1707', 'Philippines', '139.162.111.98', '2018-03-07 05:03:15', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1708', 'Philippines', '142.252.251.228', '2018-03-07 05:28:58', 'http://www.baidu.com/?rands=_10632863424632592135072', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1709', 'Philippines', '142.252.251.228', '2018-03-07 05:28:59', 'http://142.252.251.228:19946/?rands=_1950633062660283202704', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1710', 'Philippines', '204.44.65.4', '2018-03-07 06:27:45', 'http://www.baidu.com/?rands=_45009737601509855878876', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1711', 'Philippines', '89.248.172.90', '2018-03-07 07:20:42', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1712', 'Philippines', '107.170.253.119', '2018-03-07 08:55:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1713', 'Philippines', '110.54.214.106', '2018-03-07 09:08:44', 'http://www.ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1714', 'Philippines', '112.207.245.210', '2018-03-07 09:08:56', 'http://www.ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1715', 'Philippines', '112.207.245.210', '2018-03-07 09:09:07', 'http://www.ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1716', 'Philippines', '112.207.245.210', '2018-03-07 09:09:49', 'http://www.ssmcgroup.ph/Medical-Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1717', 'Philippines', '157.52.156.49', '2018-03-07 09:19:32', 'http://204.44.65.4:54681/?rands=_2239398880011761925114592', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1718', 'Philippines', '179.108.172.236', '2018-03-07 09:25:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1719', 'Philippines', '45.64.40.23', '2018-03-07 09:29:58', 'http://www.ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1720', 'Philippines', '188.59.141.138', '2018-03-07 10:41:41', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1721', 'Philippines', '188.59.141.138', '2018-03-07 10:41:54', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1722', 'Philippines', '112.207.245.210', '2018-03-07 10:54:41', 'http://www.ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1723', 'Philippines', '112.207.245.210', '2018-03-07 10:55:34', 'http://www.ssmcgroup.ph/Medical-Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1724', 'Philippines', '124.6.188.252', '2018-03-07 10:56:59', 'http://www.ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1725', 'Philippines', '124.6.188.252', '2018-03-07 10:57:21', 'http://www.ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1726', 'Philippines', '112.207.163.204', '2018-03-07 11:24:15', 'http://www.ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1727', 'Philippines', '112.207.245.210', '2018-03-07 11:24:21', 'http://www.ssmcgroup.ph/Medical-Services?page=1', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1728', 'Philippines', '112.207.245.210', '2018-03-07 11:24:41', 'http://www.ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1729', 'Philippines', '112.207.245.210', '2018-03-07 11:24:55', 'http://www.ssmcgroup.ph/Medical-Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1730', 'Philippines', '112.207.163.204', '2018-03-07 12:15:42', 'http://www.ssmcgroup.ph/Medical-Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1731', 'Philippines', '112.207.163.204', '2018-03-07 12:15:51', 'http://www.ssmcgroup.ph/Medical-Services?page=1', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1732', 'Philippines', '112.207.163.204', '2018-03-07 12:19:13', 'http://www.ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1733', 'Philippines', '112.207.163.204', '2018-03-07 12:25:45', 'http://www.ssmcgroup.ph/Medical-Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1734', 'Philippines', '112.207.163.204', '2018-03-07 12:27:06', 'http://www.ssmcgroup.ph/Medical-Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1735', 'Philippines', '122.224.121.146', '2018-03-07 13:34:16', 'http://112.124.42.80:3434/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1736', 'Philippines', '89.248.172.90', '2018-03-07 13:55:06', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1737', 'Philippines', '58.49.49.184', '2018-03-07 14:02:21', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1738', 'Philippines', '142.252.251.228', '2018-03-07 15:14:42', 'http://142.252.251.228:19946/?rands=_752446292742248012434220', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1739', 'Philippines', '47.203.91.64', '2018-03-07 19:42:35', 'http://proxyjudge.info/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1740', 'Philippines', '45.32.58.72', '2018-03-07 20:51:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1741', 'Philippines', '45.32.58.72', '2018-03-07 20:51:42', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1742', 'Philippines', '45.32.58.72', '2018-03-07 20:51:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1743', 'Philippines', '45.32.58.72', '2018-03-07 20:51:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1744', 'Philippines', '45.32.58.72', '2018-03-07 20:51:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1745', 'Philippines', '45.32.58.72', '2018-03-07 20:51:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1746', 'Philippines', '45.32.58.72', '2018-03-07 20:51:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1747', 'Philippines', '45.32.58.72', '2018-03-07 20:51:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1748', 'Philippines', '45.32.58.72', '2018-03-07 20:51:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1749', 'Philippines', '204.44.65.4', '2018-03-07 21:17:26', 'http://www.baidu.com/?rands=_17226185964440294806012892', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1750', 'Philippines', '157.52.156.49', '2018-03-07 21:42:46', 'http://204.44.65.4:54681/?rands=_7585102915418010803766152', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1751', 'Philippines', '112.207.245.210', '2018-03-08 03:25:13', 'http://www.ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1752', 'Philippines', '112.207.245.210', '2018-03-08 03:25:35', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1753', 'Philippines', '112.207.245.210', '2018-03-08 03:25:47', 'http://www.ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1754', 'Philippines', '112.207.245.210', '2018-03-08 03:25:54', 'http://www.ssmcgroup.ph/HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1755', 'Philippines', '112.207.245.210', '2018-03-08 03:26:25', 'http://www.ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1756', 'Philippines', '112.207.245.210', '2018-03-08 03:26:28', 'http://www.ssmcgroup.ph/Medical-HMO', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1757', 'Philippines', '142.252.251.228', '2018-03-08 03:42:40', 'http://www.baidu.com/?rands=_48707200381264320236560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1758', 'Philippines', '142.252.251.228', '2018-03-08 03:42:41', 'http://142.252.251.228:19946/?rands=_21031132236906279660552', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1759', 'Philippines', '89.248.172.90', '2018-03-08 03:52:45', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1760', 'Philippines', '192.99.142.236', '2018-03-08 07:58:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1761', 'Philippines', '192.99.142.236', '2018-03-08 07:58:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1762', 'Philippines', '192.99.142.236', '2018-03-08 07:58:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1763', 'Philippines', '192.99.142.236', '2018-03-08 07:58:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1764', 'Philippines', '192.99.142.236', '2018-03-08 08:05:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1765', 'Philippines', '192.99.142.236', '2018-03-08 08:05:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1766', 'Philippines', '192.99.142.236', '2018-03-08 08:05:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1767', 'Philippines', '192.99.142.236', '2018-03-08 08:05:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1768', 'Philippines', '192.99.142.236', '2018-03-08 08:05:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1769', 'Philippines', '192.99.142.236', '2018-03-08 08:05:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1770', 'Philippines', '139.162.111.98', '2018-03-08 10:00:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1771', 'Philippines', '157.52.156.49', '2018-03-08 10:08:56', 'http://204.44.65.4:54681/?rands=_6684207220459600856648', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1772', 'Philippines', '198.167.223.100', '2018-03-08 11:51:48', 'http://rfselcyqemtp3wgu.onion/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1773', 'Philippines', '204.44.65.4', '2018-03-08 12:22:43', 'http://www.baidu.com/?rands=_297024806434402325329560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1774', 'Philippines', '142.252.251.228', '2018-03-08 16:14:22', 'http://www.baidu.com/?rands=_1755822120954243944264484877848', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1775', 'Philippines', '139.162.79.87', '2018-03-08 17:41:27', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1776', 'Philippines', '107.170.231.128', '2018-03-08 21:01:13', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1777', 'Philippines', '157.52.156.49', '2018-03-08 22:33:13', 'http://204.44.65.4:54681/?rands=_14568456834980256161928', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1778', 'Philippines', '18.221.32.139', '2018-03-08 23:35:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1779', 'Philippines', '139.162.79.87', '2018-03-08 23:58:53', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1780', 'Philippines', '142.252.251.228', '2018-03-09 01:33:22', 'http://142.252.251.228:19946/?rands=_598540794035149623996664', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1781', 'Philippines', '142.252.251.228', '2018-03-09 01:33:23', 'http://www.baidu.com/?rands=_1191510329902471011785600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1782', 'Philippines', '52.11.33.212', '2018-03-09 02:16:50', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1783', 'Philippines', '18.221.32.139', '2018-03-09 02:18:43', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1784', 'Philippines', '204.44.65.4', '2018-03-09 03:19:17', 'http://www.baidu.com/?rands=_2283705122421132526392', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1785', 'Philippines', '89.248.172.90', '2018-03-09 04:10:43', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1786', 'Philippines', '146.120.105.62', '2018-03-09 08:01:54', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1787', 'Philippines', '146.120.105.62', '2018-03-09 08:01:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1788', 'Philippines', '141.212.122.64', '2018-03-09 08:48:01', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1789', 'Philippines', '62.4.14.206', '2018-03-09 08:51:10', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1790', 'Philippines', '157.52.156.49', '2018-03-09 10:56:31', 'http://204.44.65.4:54681/?rands=_1421567218682203246096', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1791', 'Philippines', '142.252.251.228', '2018-03-09 10:56:47', 'http://142.252.251.228:19946/?rands=_75784111643434403055716', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1792', 'Philippines', '142.252.251.228', '2018-03-09 10:56:48', 'http://www.baidu.com/?rands=_1448035899621831483407920', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1793', 'Philippines', '146.120.105.62', '2018-03-09 11:26:42', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1794', 'Philippines', '146.120.105.62', '2018-03-09 11:26:42', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1795', 'Philippines', '171.120.28.121', '2018-03-09 12:25:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1796', 'Philippines', '192.99.142.235', '2018-03-09 14:47:12', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1797', 'Philippines', '192.99.142.235', '2018-03-09 14:58:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1798', 'Philippines', '192.99.142.235', '2018-03-09 14:59:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1799', 'Philippines', '192.99.142.235', '2018-03-09 15:47:19', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1800', 'Philippines', '47.203.91.64', '2018-03-09 16:39:37', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1801', 'Philippines', '204.44.65.4', '2018-03-09 18:21:21', 'http://www.baidu.com/?rands=_78722223488854622724656', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1802', 'Philippines', '142.252.251.228', '2018-03-09 20:16:25', 'http://www.baidu.com/?rands=_1191510821802710141964160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1803', 'Philippines', '142.252.251.228', '2018-03-09 20:16:25', 'http://142.252.251.228:19946/?rands=_350512939841093785854832', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1804', 'Philippines', '196.52.43.63', '2018-03-09 23:19:38', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1805', 'Philippines', '5.188.87.7', '2018-03-10 02:11:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1806', 'Philippines', '142.252.251.228', '2018-03-10 05:36:02', 'http://142.252.251.228:19946/?rands=_1448047322229770204737840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1807', 'Philippines', '138.117.102.74', '2018-03-10 06:55:08', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1808', 'Philippines', '138.117.102.74', '2018-03-10 06:55:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1809', 'Philippines', '204.44.65.4', '2018-03-10 09:12:03', 'http://www.baidu.com/?rands=_6963165103896064763880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1810', 'Philippines', '46.166.151.17', '2018-03-10 09:18:32', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1811', 'Philippines', '157.52.156.49', '2018-03-10 11:46:23', 'http://204.44.65.4:54681/?rands=_11164690424514326512488', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1812', 'Philippines', '118.123.12.177', '2018-03-10 12:36:52', 'http://www.so.com/?rands=_1472022180025083003319992', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1813', 'Philippines', '172.104.108.109', '2018-03-10 18:18:02', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1814', 'Philippines', '163.172.132.88', '2018-03-10 19:29:56', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1815', 'Philippines', '216.244.83.210', '2018-03-10 20:32:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1816', 'Philippines', '185.110.132.232', '2018-03-10 21:37:36', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1817', 'Philippines', '204.44.65.4', '2018-03-11 00:12:59', 'http://www.baidu.com/?rands=_2355234379040968905277936', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1818', 'Philippines', '167.88.180.86', '2018-03-11 06:31:20', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1819', 'Philippines', '196.52.43.53', '2018-03-11 08:03:36', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1820', 'Philippines', '142.252.251.228', '2018-03-11 10:08:00', 'http://142.252.251.228:19946/?rands=_481215589448151005625712', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1821', 'Philippines', '208.100.26.231', '2018-03-11 11:23:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1822', 'Philippines', '208.100.26.231', '2018-03-11 11:25:38', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1823', 'Philippines', '208.100.26.231', '2018-03-11 11:25:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1824', 'Philippines', '208.100.26.231', '2018-03-11 11:25:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1825', 'Philippines', '162.243.149.64', '2018-03-11 11:52:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1826', 'Philippines', '216.244.83.210', '2018-03-11 12:26:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1827', 'Philippines', '139.59.188.131', '2018-03-11 12:44:47', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1828', 'Philippines', '52.3.243.240', '2018-03-11 13:17:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1829', 'Philippines', '204.44.65.4', '2018-03-11 15:11:13', 'http://www.baidu.com/?rands=_1461014400762844720532260', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1830', 'Philippines', '107.170.254.106', '2018-03-11 17:37:52', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1831', 'Philippines', '142.252.251.228', '2018-03-11 19:28:55', 'http://142.252.251.228:19946/?rands=_3150018587129456517425864', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1832', 'Philippines', '142.252.251.228', '2018-03-11 19:28:56', 'http://www.baidu.com/?rands=_84785190725684701369280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1833', 'Philippines', '178.73.215.171', '2018-03-11 19:44:20', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1834', 'Philippines', '5.26.119.59', '2018-03-11 22:11:17', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1835', 'Philippines', '5.26.119.59', '2018-03-11 22:11:18', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1836', 'Philippines', '101.251.246.66', '2018-03-11 22:25:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1837', 'Philippines', '192.99.142.236', '2018-03-12 00:16:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1838', 'Philippines', '192.99.142.236', '2018-03-12 00:16:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1839', 'Philippines', '192.99.142.236', '2018-03-12 00:16:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1840', 'Philippines', '192.99.142.236', '2018-03-12 00:16:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1841', 'Philippines', '192.99.142.236', '2018-03-12 00:16:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1842', 'Philippines', '192.99.142.236', '2018-03-12 00:16:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1843', 'Philippines', '192.99.142.236', '2018-03-12 00:16:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1844', 'Philippines', '192.99.142.236', '2018-03-12 00:17:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1845', 'Philippines', '192.99.142.236', '2018-03-12 00:17:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1846', 'Philippines', '192.99.142.236', '2018-03-12 00:17:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1847', 'Philippines', '192.99.142.236', '2018-03-12 00:17:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1848', 'Philippines', '192.99.142.236', '2018-03-12 00:17:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1849', 'Philippines', '192.99.142.236', '2018-03-12 00:17:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1850', 'Philippines', '192.99.142.236', '2018-03-12 00:17:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1851', 'Philippines', '121.58.211.162', '2018-03-12 00:30:37', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1852', 'Philippines', '121.58.211.162', '2018-03-12 00:30:43', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1853', 'Philippines', '121.58.211.162', '2018-03-12 00:31:43', 'http://ssmcgroup.ph/Medical-Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1854', 'Philippines', '121.58.211.162', '2018-03-12 00:31:45', 'http://ssmcgroup.ph/Medical-Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1855', 'Philippines', '121.58.211.162', '2018-03-12 00:32:33', 'http://ssmcgroup.ph/Medical-Services?page=2', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1856', 'Philippines', '121.58.211.162', '2018-03-12 00:32:35', 'http://ssmcgroup.ph/Medical-Services?page=1', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1857', 'Philippines', '121.58.211.162', '2018-03-12 00:32:37', 'http://ssmcgroup.ph/Medical-Services?page=0', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1858', 'Philippines', '121.58.211.162', '2018-03-12 00:33:29', 'http://ssmcgroup.ph/Medical-Careers', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1859', 'Philippines', '121.58.211.162', '2018-03-12 00:33:32', 'http://ssmcgroup.ph/Medical-ContactUs', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1860', 'Philippines', '121.58.211.162', '2018-03-12 00:33:39', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1861', 'Philippines', '50.19.23.84', '2018-03-12 04:44:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1862', 'Philippines', '142.252.251.228', '2018-03-12 05:00:42', 'http://www.baidu.com/?rands=_1092611747162083044332160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1863', 'Philippines', '142.252.251.228', '2018-03-12 05:00:44', 'http://142.252.251.228:19946/?rands=_739994430029158801314352', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1864', 'Philippines', '204.44.65.4', '2018-03-12 06:20:46', 'http://www.baidu.com/?rands=_417955582834304404337652', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1865', 'Philippines', '60.191.38.78', '2018-03-12 12:27:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1866', 'Philippines', '157.52.156.49', '2018-03-12 12:40:35', 'http://204.44.65.4:54681/?rands=_45152092403844173733464', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1867', 'Philippines', '209.126.136.4', '2018-03-12 12:49:32', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1868', 'Philippines', '142.252.251.228', '2018-03-12 14:36:12', 'http://142.252.251.228:19946/?rands=_732583375631424766080860', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1869', 'Philippines', '118.123.12.177', '2018-03-12 15:41:04', 'http://www.so.com/?rands=_5160117832687378769032', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1870', 'Philippines', '118.123.12.177', '2018-03-12 15:41:04', 'http://www.baidu.com/?rands=_1402593076500016407988', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1871', 'Philippines', '172.104.108.109', '2018-03-12 17:48:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1872', 'Philippines', '216.244.83.210', '2018-03-12 19:54:28', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1873', 'Philippines', '150.129.69.62', '2018-03-12 20:24:23', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1874', 'Philippines', '150.129.69.62', '2018-03-12 20:24:26', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1875', 'Philippines', '89.248.172.90', '2018-03-12 21:29:51', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1876', 'Philippines', '121.58.211.162', '2018-03-12 23:32:58', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1877', 'Philippines', '121.58.211.162', '2018-03-12 23:33:15', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1878', 'Philippines', '121.58.211.162', '2018-03-12 23:33:17', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1879', 'Philippines', '121.58.211.162', '2018-03-12 23:33:21', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1880', 'Philippines', '121.58.211.162', '2018-03-12 23:33:47', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1881', 'Philippines', '121.58.211.162', '2018-03-12 23:34:12', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1882', 'Philippines', '121.58.211.162', '2018-03-12 23:34:17', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1883', 'Philippines', '142.252.251.228', '2018-03-13 01:07:44', 'http://142.252.251.228:19946/?rands=_13004261020902221885144', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1884', 'Philippines', '142.252.251.228', '2018-03-13 01:07:45', 'http://www.baidu.com/?rands=_1318564426621822753881400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1885', 'Philippines', '118.123.12.177', '2018-03-13 01:54:07', 'http://www.baidu.com/?rands=_364221754052076187192', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1886', 'Philippines', '118.123.12.177', '2018-03-13 01:54:08', 'http://www.search.com/?rands=_24067794724075502872704', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1887', 'Philippines', '118.123.12.177', '2018-03-13 01:54:08', 'http://www.so.com/?rands=_546319578645949583040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1888', 'Philippines', '82.102.16.82', '2018-03-13 02:42:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1889', 'Philippines', '176.32.33.238', '2018-03-13 03:23:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1890', 'Philippines', '137.226.113.10', '2018-03-13 04:30:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1891', 'Philippines', '137.226.113.10', '2018-03-13 04:30:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1892', 'Philippines', '137.226.113.10', '2018-03-13 04:30:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1893', 'Philippines', '191.100.9.45', '2018-03-13 08:34:47', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1894', 'Philippines', '142.252.251.228', '2018-03-13 12:07:51', 'http://www.baidu.com/?rands=_166325141121793808371008', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1895', 'Philippines', '142.252.251.228', '2018-03-13 12:07:51', 'http://142.252.251.228:19946/?rands=_157624635403458911169400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1896', 'Philippines', '204.44.65.4', '2018-03-13 12:11:55', 'http://www.baidu.com/?rands=_163895873581286586224208', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1897', 'Philippines', '157.52.156.49', '2018-03-13 13:39:59', 'http://204.44.65.4:54681/?rands=_42286043521749528758280', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1898', 'Philippines', '187.39.164.244', '2018-03-13 14:24:03', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1899', 'Philippines', '187.39.164.244', '2018-03-13 14:24:15', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1900', 'Philippines', '196.52.43.97', '2018-03-13 15:21:46', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1901', 'Philippines', '89.248.172.90', '2018-03-13 18:52:28', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1902', 'Philippines', '216.244.83.210', '2018-03-13 19:58:45', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1903', 'Philippines', '107.172.210.210', '2018-03-13 20:10:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1904', 'Philippines', '139.162.79.87', '2018-03-13 20:59:29', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1905', 'Philippines', '142.252.251.228', '2018-03-13 21:43:03', 'http://www.baidu.com/?rands=_1575011480286175684910652', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1906', 'Philippines', '172.104.108.109', '2018-03-13 21:46:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1907', 'Philippines', '157.52.156.49', '2018-03-14 02:08:02', 'http://204.44.65.4:54681/?rands=_13955690424559050530160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1908', 'Philippines', '204.44.65.4', '2018-03-14 03:22:55', 'http://www.baidu.com/?rands=_63212824745009074800168', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1909', 'Philippines', '141.212.122.81', '2018-03-14 04:09:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1910', 'Philippines', '142.252.251.228', '2018-03-14 07:13:08', 'http://142.252.251.228:19946/?rands=_4206932746858751884099308', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1911', 'Philippines', '209.126.136.4', '2018-03-14 07:46:12', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1912', 'Philippines', '118.123.12.177', '2018-03-14 07:54:01', 'http://www.so.com/?rands=_37891581401287901198320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1913', 'Philippines', '118.123.12.177', '2018-03-14 07:54:02', 'http://www.search.com/?rands=_78851864091767280656', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1914', 'Philippines', '118.123.12.177', '2018-03-14 07:54:02', 'http://www.baidu.com/?rands=_48579129129544651578240', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1915', 'Philippines', '200.196.245.233', '2018-03-14 08:36:52', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1916', 'Philippines', '157.52.156.49', '2018-03-14 14:29:56', 'http://204.44.65.4:54681/?rands=_1883080375411578682229896', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1917', 'Philippines', '121.58.211.162', '2018-03-14 15:06:26', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1918', 'Philippines', '121.58.211.162', '2018-03-14 15:08:07', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1919', 'Philippines', '216.244.83.210', '2018-03-14 17:22:28', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1920', 'Philippines', '142.252.251.228', '2018-03-14 17:25:05', 'http://142.252.251.228:19946/?rands=_22744129636430296260328', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1921', 'Philippines', '139.162.79.87', '2018-03-14 17:54:44', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1922', 'Philippines', '204.44.65.4', '2018-03-14 18:23:49', 'http://www.baidu.com/?rands=_11670141486834639022088968', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1923', 'Philippines', '139.59.26.174', '2018-03-14 18:48:47', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1924', 'Philippines', '103.236.254.19', '2018-03-14 21:49:39', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1925', 'Philippines', '103.236.254.19', '2018-03-14 21:49:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1926', 'Philippines', '73.221.23.158', '2018-03-14 22:51:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1927', 'Philippines', '73.221.23.158', '2018-03-14 22:51:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1928', 'Philippines', '45.76.221.148', '2018-03-15 01:02:42', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1929', 'Philippines', '157.52.156.49', '2018-03-15 02:55:27', 'http://204.44.65.4:54681/?rands=_561414290327507505266624', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1930', 'Philippines', '176.32.33.238', '2018-03-15 03:20:37', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1931', 'Philippines', '192.99.142.235', '2018-03-15 04:20:50', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1932', 'Philippines', '192.99.142.235', '2018-03-15 05:26:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1933', 'Philippines', '139.162.119.197', '2018-03-15 05:26:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1934', 'Philippines', '142.252.251.228', '2018-03-15 05:38:38', 'http://www.baidu.com/?rands=_324590350421647222403040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1935', 'Philippines', '142.252.251.228', '2018-03-15 05:38:41', 'http://142.252.251.228:19946/?rands=_14004163254041744462557920', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1936', 'Philippines', '204.44.65.4', '2018-03-15 09:26:51', 'http://www.baidu.com/?rands=_19537143016410733761095664', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1937', 'Philippines', '118.123.12.177', '2018-03-15 10:09:42', 'http://www.search.com/?rands=_54563222721747602669576', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1938', 'Philippines', '118.123.12.177', '2018-03-15 10:09:43', 'http://www.so.com/?rands=_2611123101298688235040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1939', 'Philippines', '118.123.12.177', '2018-03-15 10:09:43', 'http://www.baidu.com/?rands=_3015215020277651103596', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1940', 'Philippines', '125.65.40.231', '2018-03-15 12:54:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1941', 'Philippines', '157.52.156.49', '2018-03-15 15:19:31', 'http://204.44.65.4:54681/?rands=_987573596020214482005024', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1942', 'Philippines', '142.252.251.228', '2018-03-15 17:52:22', 'http://www.baidu.com/?rands=_1575014213687719605868828', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1943', 'Philippines', '204.44.65.4', '2018-03-16 00:35:40', 'http://www.baidu.com/?rands=_1472023289028427403830760', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1944', 'Philippines', '157.52.156.49', '2018-03-16 03:43:05', 'http://204.44.65.4:54681/?rands=_1014427410024226654708032', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1945', 'Philippines', '134.119.216.241', '2018-03-16 04:18:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1946', 'Philippines', '134.119.216.241', '2018-03-16 04:21:41', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1947', 'Philippines', '142.252.251.228', '2018-03-16 06:01:50', 'http://142.252.251.228:19946/?rands=_274061189223224383571064', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1948', 'Philippines', '141.212.122.81', '2018-03-16 12:04:07', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1949', 'Philippines', '93.204.18.118', '2018-03-16 12:06:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1950', 'Philippines', '93.204.18.118', '2018-03-16 12:06:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1951', 'Philippines', '93.204.18.118', '2018-03-16 12:06:41', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1952', 'Philippines', '216.244.83.210', '2018-03-16 13:36:47', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1953', 'Philippines', '196.52.43.102', '2018-03-16 13:46:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1954', 'Philippines', '204.44.65.4', '2018-03-16 15:40:31', 'http://www.baidu.com/?rands=_11556141159228282263480000', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1955', 'Philippines', '157.52.156.49', '2018-03-16 16:07:44', 'http://204.44.65.4:54681/?rands=_1091267140049515391804944', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1956', 'Philippines', '118.123.12.177', '2018-03-16 16:22:34', 'http://www.search.com/?rands=_27284028401941780727800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1957', 'Philippines', '118.123.12.177', '2018-03-16 16:22:34', 'http://www.so.com/?rands=_164426604010246051577912', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1958', 'Philippines', '142.252.251.228', '2018-03-16 18:50:40', 'http://www.baidu.com/?rands=_185889216001582938946528', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1959', 'Philippines', '142.252.251.228', '2018-03-16 18:50:40', 'http://142.252.251.228:19946/?rands=_84785623286659221649360', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1960', 'Philippines', '177.86.48.28', '2018-03-16 21:31:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1961', 'Philippines', '177.86.48.28', '2018-03-16 21:31:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1962', 'Philippines', '177.86.48.28', '2018-03-16 21:31:47', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1963', 'Philippines', '172.104.108.109', '2018-03-16 22:53:36', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1964', 'Philippines', '196.52.43.53', '2018-03-16 23:42:53', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1965', 'Philippines', '5.188.9.80', '2018-03-16 23:49:14', 'http://138.197.15.53/.DS_Store', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1966', 'Philippines', '5.188.87.7', '2018-03-17 01:48:48', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1967', 'Philippines', '124.104.237.161', '2018-03-17 02:15:31', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1968', 'Philippines', '124.104.237.161', '2018-03-17 02:15:54', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1969', 'Philippines', '124.104.237.161', '2018-03-17 02:16:32', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1970', 'Philippines', '93.51.205.164', '2018-03-17 03:30:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1971', 'Philippines', '93.51.205.164', '2018-03-17 03:30:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1972', 'Philippines', '93.51.205.164', '2018-03-17 03:30:11', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1973', 'Philippines', '93.51.205.164', '2018-03-17 03:30:11', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1974', 'Philippines', '93.51.205.164', '2018-03-17 03:30:11', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1975', 'Philippines', '157.52.156.49', '2018-03-17 04:34:11', 'http://204.44.65.4:54681/?rands=_98914541885035021213680', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1976', 'Philippines', '42.51.33.89', '2018-03-17 05:24:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1977', 'Philippines', '204.44.65.4', '2018-03-17 06:45:01', 'http://www.baidu.com/?rands=_175814523306911372319800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1978', 'Philippines', '118.123.12.177', '2018-03-17 07:40:01', 'http://www.baidu.com/?rands=_22507790081071510600208', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1979', 'Philippines', '118.123.12.177', '2018-03-17 07:40:04', 'http://www.so.com/?rands=_3015236522314671219764', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1980', 'Philippines', '142.252.251.228', '2018-03-17 07:57:34', 'http://www.baidu.com/?rands=_65405421607995303612432', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1981', 'Philippines', '142.252.251.228', '2018-03-17 07:57:34', 'http://142.252.251.228:19946/?rands=_383682472427322804069352', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1982', 'Philippines', '79.192.136.116', '2018-03-17 12:40:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1983', 'Philippines', '79.192.136.116', '2018-03-17 12:40:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1984', 'Philippines', '79.192.136.116', '2018-03-17 12:40:22', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1985', 'Philippines', '125.65.40.231', '2018-03-17 13:09:28', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1986', 'Philippines', '125.65.40.231', '2018-03-17 13:09:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1987', 'Philippines', '216.244.83.210', '2018-03-17 16:23:20', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1988', 'Philippines', '216.244.83.210', '2018-03-17 16:32:55', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1989', 'Philippines', '157.52.156.49', '2018-03-17 17:01:36', 'http://204.44.65.4:54681/?rands=_2205010933605982694790880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1990', 'Philippines', '89.248.167.131', '2018-03-17 19:16:36', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1991', 'Philippines', '139.162.108.53', '2018-03-17 20:03:29', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1992', 'Philippines', '204.44.65.4', '2018-03-17 21:50:46', 'http://www.baidu.com/?rands=_4352144102678544517088', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1993', 'Philippines', '142.252.251.228', '2018-03-17 23:29:51', 'http://142.252.251.228:19946/?rands=_100263666207813201416764', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1994', 'Philippines', '142.252.251.228', '2018-03-17 23:29:52', 'http://www.baidu.com/?rands=_19194128544015069966332352', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1995', 'Philippines', '5.188.9.80', '2018-03-18 00:26:57', 'http://138.197.15.53/.DS_Store', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1996', 'Philippines', '5.188.9.80', '2018-03-18 00:26:59', 'http://138.197.15.53/.wp-config.php.swp', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1997', 'Philippines', '121.58.211.162', '2018-03-18 03:58:17', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1998', 'Philippines', '121.58.211.162', '2018-03-18 03:58:34', 'http://ssmcgroup.ph/Medical-About', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('1999', 'Philippines', '157.52.156.49', '2018-03-18 05:27:28', 'http://204.44.65.4:54681/?rands=_9365532308709382969948', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2000', 'Philippines', '142.252.251.228', '2018-03-18 11:18:11', 'http://www.baidu.com/?rands=_1268025217223534464708032', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2001', 'Philippines', '35.226.180.150', '2018-03-18 16:11:30', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2002', 'Philippines', '177.11.16.55', '2018-03-18 17:40:38', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2003', 'Philippines', '177.11.16.55', '2018-03-18 17:40:45', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2004', 'Philippines', '157.52.156.49', '2018-03-18 17:54:10', 'http://204.44.65.4:54681/?rands=_44367565601218641433848864', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2005', 'Philippines', '178.73.215.171', '2018-03-18 18:36:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2006', 'Philippines', '66.240.205.34', '2018-03-18 20:03:50', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2007', 'Philippines', '142.252.251.228', '2018-03-18 23:12:09', 'http://142.252.251.228:19946/?rands=_12199194544022821007782768', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2008', 'Philippines', '142.252.251.228', '2018-03-18 23:12:09', 'http://www.baidu.com/?rands=_1319050613821390483820536', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2009', 'Philippines', '93.170.114.251', '2018-03-18 23:54:46', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2010', 'Philippines', '89.247.172.230', '2018-03-18 23:57:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2011', 'Philippines', '89.247.172.230', '2018-03-18 23:57:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2012', 'Philippines', '89.247.172.230', '2018-03-18 23:57:10', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2013', 'Philippines', '89.248.172.90', '2018-03-19 00:42:51', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2014', 'Philippines', '157.52.156.49', '2018-03-19 06:19:29', 'http://204.44.65.4:54681/?rands=_119157870401833331339200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2015', 'Philippines', '66.102.7.230', '2018-03-19 06:27:49', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2016', 'Philippines', '42.51.33.89', '2018-03-19 06:48:09', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2017', 'Philippines', '139.162.119.197', '2018-03-19 07:26:02', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2018', 'Philippines', '121.58.211.162', '2018-03-19 07:55:49', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2019', 'Philippines', '142.252.251.228', '2018-03-19 10:48:31', 'http://www.baidu.com/?rands=_124743534521233243245344', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2020', 'Philippines', '118.123.12.177', '2018-03-19 13:54:18', 'http://www.baidu.com/?rands=_12747435080980256498240', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2021', 'Philippines', '118.123.12.177', '2018-03-19 13:54:18', 'http://www.search.com/?rands=_27091569302329802133408', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2022', 'Philippines', '118.123.12.177', '2018-03-19 13:54:18', 'http://www.so.com/?rands=_6384108380822420151772', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2023', 'Philippines', '204.44.65.4', '2018-03-19 18:37:58', 'http://www.baidu.com/?rands=_6654118888015974705435584', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2024', 'Philippines', '157.52.156.49', '2018-03-19 18:41:50', 'http://204.44.65.4:54681/?rands=_223028015219526253757116', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2025', 'Philippines', '187.102.21.180', '2018-03-19 20:25:11', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2026', 'Philippines', '187.102.21.180', '2018-03-19 20:25:11', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2027', 'Philippines', '187.102.21.180', '2018-03-19 20:25:16', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2028', 'Philippines', '5.188.9.80', '2018-03-19 21:58:57', 'http://138.197.15.53:8080/.DS_Store', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2029', 'Philippines', '5.188.9.80', '2018-03-19 22:12:55', 'http://138.197.15.53:8080/.DS_Store', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2030', 'Philippines', '5.188.9.80', '2018-03-19 22:12:56', 'http://138.197.15.53:8080/.wp-config.php.swp', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2031', 'Philippines', '209.126.136.4', '2018-03-19 22:23:24', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2032', 'Philippines', '142.252.251.228', '2018-03-19 22:37:50', 'http://142.252.251.228:19946/?rands=_5790107386421453665398220', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2033', 'Philippines', '142.252.251.228', '2018-03-19 22:37:52', 'http://www.baidu.com/?rands=_1345088030210935422084468', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2034', 'Philippines', '5.188.9.80', '2018-03-19 23:01:58', 'http://138.197.15.53:8080/.DS_Store', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2035', 'Philippines', '5.188.9.80', '2018-03-19 23:02:00', 'http://138.197.15.53:8080/.wp-config.php.swp', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2036', 'Philippines', '66.102.6.190', '2018-03-19 23:43:06', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2037', 'Philippines', '196.52.43.86', '2018-03-19 23:44:54', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2038', 'Philippines', '192.99.142.236', '2018-03-20 02:37:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2039', 'Philippines', '192.99.142.236', '2018-03-20 02:37:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2040', 'Philippines', '192.99.142.236', '2018-03-20 02:37:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2041', 'Philippines', '179.153.69.128', '2018-03-20 04:26:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2042', 'Philippines', '80.250.155.222', '2018-03-20 06:59:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2043', 'Philippines', '80.250.155.222', '2018-03-20 06:59:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2044', 'Philippines', '157.52.156.49', '2018-03-20 07:01:49', 'http://204.44.65.4:54681/?rands=_1158422845213231202161120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2045', 'Philippines', '204.44.65.4', '2018-03-20 09:40:09', 'http://www.baidu.com/?rands=_19194128544014334846088800', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2046', 'Philippines', '46.17.46.152', '2018-03-20 12:51:37', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2047', 'Philippines', '90.120.222.35', '2018-03-20 13:14:06', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2048', 'Philippines', '90.120.222.35', '2018-03-20 13:14:06', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2049', 'Philippines', '90.120.222.35', '2018-03-20 13:14:07', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2050', 'Philippines', '90.120.222.35', '2018-03-20 13:14:07', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2051', 'Philippines', '90.120.222.35', '2018-03-20 13:14:08', 'http://127.0.0.1/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2052', 'Philippines', '157.52.156.49', '2018-03-20 19:25:05', 'http://204.44.65.4:54681/?rands=_13955690424469602459472', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2053', 'Philippines', '142.252.251.228', '2018-03-20 21:58:21', 'http://142.252.251.228:19946/?rands=_96471288012792483009904', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2054', 'Philippines', '142.252.251.228', '2018-03-20 21:58:22', 'http://www.baidu.com/?rands=_112389885721216084506128', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2055', 'Philippines', '123.129.217.153', '2018-03-21 00:39:54', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2056', 'Philippines', '176.32.33.238', '2018-03-21 03:44:55', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2057', 'Philippines', '221.120.37.191', '2018-03-21 05:09:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2058', 'Philippines', '221.120.37.191', '2018-03-21 05:09:31', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2059', 'Philippines', '221.120.37.191', '2018-03-21 05:09:41', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2060', 'Philippines', '89.248.172.90', '2018-03-21 05:35:59', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2061', 'Philippines', '5.188.87.7', '2018-03-21 07:27:33', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2062', 'Philippines', '157.52.156.49', '2018-03-21 07:41:39', 'http://204.44.65.4:54681/?rands=_913828769014024281303776', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2063', 'Philippines', '142.252.251.228', '2018-03-21 09:50:50', 'http://www.baidu.com/?rands=_98915839566821641649360', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2064', 'Philippines', '142.252.251.228', '2018-03-21 09:50:51', 'http://142.252.251.228:19946/?rands=_2397676602424232652825064', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2065', 'Philippines', '118.123.12.177', '2018-03-21 10:04:14', 'http://www.so.com/?rands=_1498543772814088751778744', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2066', 'Philippines', '118.123.12.177', '2018-03-21 10:04:15', 'http://www.baidu.com/?rands=_75783320942661662336724', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2067', 'Philippines', '35.205.140.34', '2018-03-21 11:52:52', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2068', 'Philippines', '5.188.87.7', '2018-03-21 17:51:01', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2069', 'Philippines', '157.52.156.49', '2018-03-21 20:09:15', 'http://204.44.65.4:54681/?rands=_1645249635044908001660384', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2070', 'Philippines', '142.252.251.228', '2018-03-21 22:13:29', 'http://142.252.251.228:19946/?rands=_634294430026971891162696', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2071', 'Philippines', '142.252.251.228', '2018-03-21 22:13:30', 'http://www.baidu.com/?rands=_1775230699229071986053184', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2072', 'Philippines', '118.123.12.177', '2018-03-22 02:13:21', 'http://www.search.com/?rands=_161407654809970531939040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2073', 'Philippines', '118.123.12.177', '2018-03-22 02:13:22', 'http://www.baidu.com/?rands=_1319039610817231223007656', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2074', 'Philippines', '107.170.192.241', '2018-03-22 02:26:12', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2075', 'Philippines', '139.162.111.98', '2018-03-22 04:18:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2076', 'Philippines', '204.44.65.4', '2018-03-22 06:55:07', 'http://www.baidu.com/?rands=_81844162680166022195269272', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2077', 'Philippines', '203.162.13.243', '2018-03-22 07:06:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2078', 'Philippines', '157.52.156.49', '2018-03-22 08:33:12', 'http://204.44.65.4:54681/?rands=_606870415812607565504376', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2079', 'Philippines', '142.252.251.228', '2018-03-22 10:17:13', 'http://www.baidu.com/?rands=_528583098423327041011040', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2080', 'Philippines', '142.252.251.228', '2018-03-22 10:17:13', 'http://142.252.251.228:19946/?rands=_1055244012017825403170232', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2081', 'Philippines', '47.203.88.161', '2018-03-22 18:04:24', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2082', 'Philippines', '47.203.88.161', '2018-03-22 18:04:24', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2083', 'Philippines', '118.123.12.177', '2018-03-22 18:09:54', 'http://www.search.com/?rands=_1114548136014858914655008', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2084', 'Philippines', '118.123.12.177', '2018-03-22 18:09:54', 'http://www.so.com/?rands=_5025430040573812265276', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2085', 'Philippines', '118.123.12.177', '2018-03-22 18:09:55', 'http://www.baidu.com/?rands=_11850107940830321722935928', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2086', 'Philippines', '157.52.156.49', '2018-03-22 21:02:15', 'http://204.44.65.4:54681/?rands=_8316208858822162161568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2087', 'Philippines', '204.44.65.4', '2018-03-22 21:51:35', 'http://www.baidu.com/?rands=_6416240337211583007780240', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2088', 'Philippines', '142.252.251.228', '2018-03-22 22:46:16', 'http://142.252.251.228:19946/?rands=_1243537241617081464623696', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2089', 'Philippines', '142.252.251.228', '2018-03-22 22:46:17', 'http://www.baidu.com/?rands=_3750376358243896400017427468', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2090', 'Philippines', '107.170.196.250', '2018-03-22 22:47:13', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2091', 'Philippines', '118.123.12.177', '2018-03-22 23:10:54', 'http://www.so.com/?rands=_19701037280176475514536', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2092', 'Philippines', '192.161.81.18', '2018-03-23 00:03:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2093', 'Philippines', '54.67.108.154', '2018-03-23 01:53:27', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2094', 'Philippines', '176.32.33.238', '2018-03-23 02:34:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2095', 'Philippines', '118.123.12.177', '2018-03-23 05:14:31', 'http://www.baidu.com/?rands=_1217515709922686680508604', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2096', 'Philippines', '118.123.12.177', '2018-03-23 05:14:31', 'http://www.so.com/?rands=_7830102769824021903942880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2097', 'Philippines', '118.123.12.177', '2018-03-23 05:14:31', 'http://www.search.com/?rands=_139551183584760308742224', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2098', 'Philippines', '157.52.156.49', '2018-03-23 09:25:42', 'http://204.44.65.4:54681/?rands=_15490537600977697580824', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2099', 'Philippines', '89.248.172.90', '2018-03-23 14:37:19', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2100', 'Philippines', '141.212.122.128', '2018-03-23 20:58:40', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2101', 'Philippines', '157.52.156.49', '2018-03-23 21:53:21', 'http://204.44.65.4:54681/?rands=_2600852204180445337840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2102', 'Philippines', '89.248.172.90', '2018-03-23 22:37:02', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2103', 'Philippines', '142.252.251.228', '2018-03-23 23:31:01', 'http://142.252.251.228:19946/?rands=_1308070480810476604993656', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2104', 'Philippines', '107.170.195.198', '2018-03-24 00:44:16', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2105', 'Philippines', '203.162.13.243', '2018-03-24 00:45:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2106', 'Philippines', '139.162.114.70', '2018-03-24 01:01:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2107', 'Philippines', '121.58.211.162', '2018-03-24 01:47:37', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2108', 'Philippines', '204.44.65.4', '2018-03-24 03:40:03', 'http://www.baidu.com/?rands=_72243661705940995777980', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2109', 'Philippines', '172.104.108.109', '2018-03-24 06:28:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2110', 'Philippines', '182.92.5.197', '2018-03-24 06:31:04', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2111', 'Philippines', '157.52.156.49', '2018-03-24 10:20:40', 'http://204.44.65.4:54681/?rands=_94027627614987703136560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2112', 'Philippines', '196.52.43.66', '2018-03-24 12:46:16', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2113', 'Philippines', '34.229.183.76', '2018-03-24 13:40:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2114', 'Philippines', '204.44.65.4', '2018-03-24 18:40:09', 'http://www.baidu.com/?rands=_119159346102471011785600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2115', 'Philippines', '167.99.44.198', '2018-03-24 18:59:50', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2116', 'Philippines', '107.170.239.206', '2018-03-24 19:43:05', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2117', 'Philippines', '196.52.43.52', '2018-03-24 23:08:56', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2118', 'Philippines', '142.252.251.228', '2018-03-25 00:39:06', 'http://142.252.251.228:19946/?rands=_1217513746182528640473120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2119', 'Philippines', '118.123.12.177', '2018-03-25 01:36:32', 'http://www.search.com/?rands=_363012365589318662874568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2120', 'Philippines', '118.123.12.177', '2018-03-25 01:36:33', 'http://www.baidu.com/?rands=_879591690269712974316', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2121', 'Philippines', '118.123.12.177', '2018-03-25 01:36:33', 'http://www.so.com/?rands=_36306508205734561947288', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2122', 'Philippines', '118.123.12.177', '2018-03-25 01:36:45', 'http://www.search.com/?rands=_286845441020674501682400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2123', 'Philippines', '118.123.12.177', '2018-03-25 01:36:46', 'http://www.baidu.com/?rands=_6237144594523194113696', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2124', 'Philippines', '139.162.114.70', '2018-03-25 03:13:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2125', 'Philippines', '118.123.12.177', '2018-03-25 03:35:42', 'http://www.so.com/?rands=_95974449605145842191968', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2126', 'Philippines', '118.123.12.177', '2018-03-25 03:35:42', 'http://www.search.com/?rands=_66872625608104862489888', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2127', 'Philippines', '118.123.12.177', '2018-03-25 03:35:47', 'http://www.baidu.com/?rands=_1177613308015049801957944', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2128', 'Philippines', '107.170.198.171', '2018-03-25 10:32:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2129', 'Philippines', '157.52.156.49', '2018-03-25 11:10:59', 'http://204.44.65.4:54681/?rands=_7832042002272704399568', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2130', 'Philippines', '89.248.172.90', '2018-03-25 15:06:16', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2131', 'Philippines', '142.252.251.228', '2018-03-25 16:50:28', 'http://142.252.251.228:19946/?rands=_3789170791210818367968828', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2132', 'Philippines', '142.252.251.228', '2018-03-25 16:50:29', 'http://www.baidu.com/?rands=_17058120029891524753212', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2133', 'Philippines', '178.73.215.171', '2018-03-25 17:46:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2134', 'Philippines', '157.52.156.49', '2018-03-25 23:36:03', 'http://204.44.65.4:54681/?rands=_1177612975301028403010981512', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2135', 'Philippines', '118.123.12.177', '2018-03-26 00:04:31', 'http://www.search.com/?rands=_7149491900127536937440', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2136', 'Philippines', '118.123.12.177', '2018-03-26 00:04:32', 'http://www.so.com/?rands=_641619486809652506822672', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2137', 'Philippines', '118.123.12.177', '2018-03-26 00:04:32', 'http://www.baidu.com/?rands=_6684159400367680658960', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2138', 'Philippines', '204.44.65.4', '2018-03-26 00:27:14', 'http://www.baidu.com/?rands=_112846754424265804928880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2139', 'Philippines', '54.227.8.197', '2018-03-26 03:39:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2140', 'Philippines', '35.198.60.96', '2018-03-26 07:03:45', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2141', 'Philippines', '35.198.60.96', '2018-03-26 07:37:16', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2142', 'Philippines', '139.162.111.98', '2018-03-26 09:22:34', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2143', 'Philippines', '218.77.77.90', '2018-03-26 11:18:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2144', 'Philippines', '80.113.178.130', '2018-03-26 11:27:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2145', 'Philippines', '80.113.178.130', '2018-03-26 11:27:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2146', 'Philippines', '80.113.178.130', '2018-03-26 11:27:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2147', 'Philippines', '163.172.32.18', '2018-03-26 11:46:25', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2148', 'Philippines', '157.52.156.49', '2018-03-26 11:57:36', 'http://204.44.65.4:54681/?rands=_5652302792341082840240', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2149', 'Philippines', '204.44.65.4', '2018-03-26 15:22:07', 'http://www.baidu.com/?rands=_324567762816966741985120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2150', 'Philippines', '123.249.7.4', '2018-03-26 16:45:06', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2151', 'Philippines', '95.222.27.133', '2018-03-26 17:02:17', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2152', 'Philippines', '95.222.27.133', '2018-03-26 17:02:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2153', 'Philippines', '142.252.251.228', '2018-03-26 17:19:28', 'http://142.252.251.228:19946/?rands=_12945103481623499845391312', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2154', 'Philippines', '142.252.251.228', '2018-03-26 17:19:29', 'http://www.baidu.com/?rands=_18065649486989405777980', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2155', 'Philippines', '35.184.197.138', '2018-03-26 17:50:48', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2156', 'Philippines', '172.104.108.109', '2018-03-26 18:52:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2157', 'Philippines', '209.126.136.4', '2018-03-26 18:53:33', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2158', 'Philippines', '191.252.56.173', '2018-03-26 19:10:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2159', 'Philippines', '47.203.88.161', '2018-03-26 20:04:20', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2160', 'Philippines', '80.82.70.133', '2018-03-26 21:40:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2161', 'Philippines', '118.163.36.234', '2018-03-26 22:50:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2162', 'Philippines', '118.163.36.234', '2018-03-26 22:50:27', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2163', 'Philippines', '118.163.36.234', '2018-03-26 22:50:28', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2164', 'Philippines', '189.50.144.36', '2018-03-26 23:31:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2165', 'Philippines', '189.50.144.36', '2018-03-26 23:31:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2166', 'Philippines', '189.50.144.36', '2018-03-26 23:31:59', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2167', 'Philippines', '139.162.251.201', '2018-03-26 23:44:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2168', 'Philippines', '146.185.128.208', '2018-03-26 23:50:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2169', 'Philippines', '20.36.25.141', '2018-03-27 00:30:16', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2170', 'Philippines', '20.36.25.141', '2018-03-27 00:30:16', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2171', 'Philippines', '78.186.246.175', '2018-03-27 00:42:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2172', 'Philippines', '78.186.246.175', '2018-03-27 00:42:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2173', 'Philippines', '78.186.246.175', '2018-03-27 00:42:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2174', 'Philippines', '37.46.62.136', '2018-03-27 01:11:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2175', 'Philippines', '37.46.62.136', '2018-03-27 01:11:01', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2176', 'Philippines', '196.52.43.117', '2018-03-27 03:00:45', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2177', 'Philippines', '70.114.215.137', '2018-03-27 03:01:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2178', 'Philippines', '70.114.215.137', '2018-03-27 03:01:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2179', 'Philippines', '70.114.215.137', '2018-03-27 03:01:40', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2180', 'Philippines', '189.50.144.36', '2018-03-27 03:51:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2181', 'Philippines', '189.50.144.36', '2018-03-27 03:51:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2182', 'Philippines', '189.50.144.36', '2018-03-27 03:51:41', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2183', 'Philippines', '217.92.148.44', '2018-03-27 05:34:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2184', 'Philippines', '139.162.119.197', '2018-03-27 05:45:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2185', 'Philippines', '188.192.150.152', '2018-03-27 06:09:02', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2186', 'Philippines', '107.155.132.183', '2018-03-27 06:45:15', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2187', 'Philippines', '54.255.201.67', '2018-03-27 07:07:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2188', 'Philippines', '104.131.125.152', '2018-03-27 07:20:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2189', 'Philippines', '104.131.125.152', '2018-03-27 07:20:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2190', 'Philippines', '104.131.125.152', '2018-03-27 07:20:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2191', 'Philippines', '187.110.93.7', '2018-03-27 07:21:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2192', 'Philippines', '187.110.93.7', '2018-03-27 07:21:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2193', 'Philippines', '187.110.93.7', '2018-03-27 07:21:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2194', 'Philippines', '217.229.163.181', '2018-03-27 07:30:25', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2195', 'Philippines', '217.229.163.181', '2018-03-27 07:30:25', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2196', 'Philippines', '217.229.163.181', '2018-03-27 07:30:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2197', 'Philippines', '186.205.118.210', '2018-03-27 07:41:15', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2198', 'Philippines', '220.132.161.57', '2018-03-27 07:57:11', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2199', 'Philippines', '220.132.161.57', '2018-03-27 07:57:12', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2200', 'Philippines', '94.242.55.125', '2018-03-27 08:00:08', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2201', 'Philippines', '94.242.55.125', '2018-03-27 08:00:08', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2202', 'Philippines', '94.242.55.125', '2018-03-27 08:00:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2203', 'Philippines', '52.77.107.104', '2018-03-27 08:00:19', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2204', 'Philippines', '52.77.107.104', '2018-03-27 08:00:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2205', 'Philippines', '84.192.101.162', '2018-03-27 08:17:59', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2206', 'Philippines', '84.192.101.162', '2018-03-27 08:17:59', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2207', 'Philippines', '84.192.101.162', '2018-03-27 08:18:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2208', 'Philippines', '159.65.128.30', '2018-03-27 08:20:17', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2209', 'Philippines', '159.65.128.30', '2018-03-27 08:20:19', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2210', 'Philippines', '104.236.44.151', '2018-03-27 08:30:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2211', 'Philippines', '104.236.44.151', '2018-03-27 08:30:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2212', 'Philippines', '196.52.43.86', '2018-03-27 08:53:55', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2213', 'Philippines', '85.88.194.40', '2018-03-27 09:06:54', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2214', 'Philippines', '85.88.194.40', '2018-03-27 09:06:55', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2215', 'Philippines', '85.88.194.40', '2018-03-27 09:06:55', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2216', 'Philippines', '41.203.120.182', '2018-03-27 09:10:15', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2217', 'Philippines', '41.203.120.182', '2018-03-27 09:10:15', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2218', 'Philippines', '41.203.120.182', '2018-03-27 09:10:16', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2219', 'Philippines', '35.154.115.15', '2018-03-27 09:20:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2220', 'Philippines', '35.154.115.15', '2018-03-27 09:20:32', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2221', 'Philippines', '177.84.192.17', '2018-03-27 09:31:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2222', 'Philippines', '177.84.192.17', '2018-03-27 09:31:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2223', 'Philippines', '94.173.63.172', '2018-03-27 09:39:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2224', 'Philippines', '94.173.63.172', '2018-03-27 09:39:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2225', 'Philippines', '94.173.63.172', '2018-03-27 09:39:22', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2226', 'Philippines', '107.170.194.209', '2018-03-27 10:32:21', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2227', 'Philippines', '139.162.79.87', '2018-03-27 12:01:22', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2228', 'Philippines', '157.52.156.49', '2018-03-27 12:36:58', 'http://204.44.65.4:54681/?rands=_95976427207718763287952', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2229', 'Philippines', '104.131.7.160', '2018-03-27 15:21:49', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2230', 'Philippines', '159.65.144.146', '2018-03-27 19:17:56', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2231', 'Philippines', '159.65.144.146', '2018-03-27 19:17:57', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2232', 'Philippines', '159.65.144.146', '2018-03-27 19:17:58', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2233', 'Philippines', '46.101.63.57', '2018-03-27 20:46:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2234', 'Philippines', '46.101.63.57', '2018-03-27 20:46:44', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2235', 'Philippines', '138.197.40.237', '2018-03-27 21:16:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2236', 'Philippines', '138.197.40.237', '2018-03-27 21:16:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2237', 'Philippines', '204.44.65.4', '2018-03-27 21:29:24', 'http://www.baidu.com/?rands=_15490407040056333972796560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2238', 'Philippines', '104.128.144.131', '2018-03-27 22:45:24', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2239', 'Philippines', '222.228.217.111', '2018-03-28 01:08:19', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2240', 'Philippines', '222.228.217.111', '2018-03-28 01:08:20', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2241', 'Philippines', '112.207.245.210', '2018-03-28 01:11:22', 'http://ssmcgroup.ph/SsmcHealthClinics', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2242', 'Philippines', '209.126.136.4', '2018-03-28 01:27:19', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2243', 'Philippines', '142.252.251.228', '2018-03-28 02:46:58', 'http://142.252.251.228:19946/?rands=_21686115200025140781419792', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2244', 'Philippines', '142.252.251.228', '2018-03-28 02:46:58', 'http://www.baidu.com/?rands=_682045655225243141018920', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2245', 'Philippines', '217.146.204.56', '2018-03-28 04:49:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2246', 'Philippines', '217.146.204.56', '2018-03-28 04:49:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2247', 'Philippines', '217.146.204.56', '2018-03-28 04:49:43', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2248', 'Philippines', '23.225.163.147', '2018-03-28 05:19:11', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2249', 'Philippines', '35.184.178.6', '2018-03-28 07:32:02', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2250', 'Philippines', '64.137.252.190', '2018-03-28 07:36:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2251', 'Philippines', '64.137.252.190', '2018-03-28 07:36:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2252', 'Philippines', '54.145.188.132', '2018-03-28 07:59:39', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2253', 'Philippines', '79.231.26.203', '2018-03-28 08:37:08', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2254', 'Philippines', '79.231.26.203', '2018-03-28 08:37:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2255', 'Philippines', '185.94.80.9', '2018-03-28 09:08:37', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2256', 'Philippines', '185.94.80.9', '2018-03-28 09:08:37', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2257', 'Philippines', '185.94.80.9', '2018-03-28 09:08:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2258', 'Philippines', '185.100.87.248', '2018-03-28 09:30:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2259', 'Philippines', '185.100.87.248', '2018-03-28 09:31:56', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2260', 'Philippines', '190.94.136.118', '2018-03-28 10:56:22', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2261', 'Philippines', '204.44.65.4', '2018-03-28 12:34:28', 'http://www.baidu.com/?rands=_175812909606237092180612', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2262', 'Philippines', '159.203.218.242', '2018-03-28 12:36:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2263', 'Philippines', '154.16.114.176', '2018-03-28 12:46:13', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2264', 'Philippines', '154.16.114.176', '2018-03-28 12:46:13', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2265', 'Philippines', '92.44.62.4', '2018-03-28 12:57:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2266', 'Philippines', '92.44.62.4', '2018-03-28 12:57:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2267', 'Philippines', '92.44.62.4', '2018-03-28 12:57:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2268', 'Philippines', '200.174.119.34', '2018-03-28 14:17:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2269', 'Philippines', '200.174.119.34', '2018-03-28 14:17:26', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2270', 'Philippines', '142.252.251.228', '2018-03-28 14:56:20', 'http://www.baidu.com/?rands=_598545501040699564865504', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2271', 'Philippines', '142.252.251.228', '2018-03-28 14:56:20', 'http://142.252.251.228:19946/?rands=_1492238860819669565614488', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2272', 'Philippines', '201.238.155.226', '2018-03-28 16:50:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2273', 'Philippines', '201.238.155.226', '2018-03-28 16:50:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2274', 'Philippines', '35.204.169.31', '2018-03-28 17:35:04', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2275', 'Philippines', '190.94.149.104', '2018-03-28 17:39:45', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2276', 'Philippines', '185.99.127.238', '2018-03-28 18:38:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2277', 'Philippines', '185.99.127.238', '2018-03-28 18:38:29', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2278', 'Philippines', '185.99.127.238', '2018-03-28 18:38:29', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2279', 'Philippines', '201.238.155.23', '2018-03-28 18:38:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2280', 'Philippines', '201.238.155.23', '2018-03-28 18:38:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2281', 'Philippines', '201.238.155.23', '2018-03-28 18:38:50', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2282', 'Philippines', '60.241.233.167', '2018-03-28 20:07:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2283', 'Philippines', '60.241.233.167', '2018-03-28 20:07:33', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2284', 'Philippines', '60.241.233.167', '2018-03-28 20:07:34', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2285', 'Philippines', '203.218.208.73', '2018-03-28 20:40:49', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2286', 'Philippines', '203.218.208.73', '2018-03-28 20:40:50', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2287', 'Philippines', '190.94.144.64', '2018-03-28 20:51:33', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2288', 'Philippines', '87.79.111.202', '2018-03-28 21:08:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2289', 'Philippines', '87.79.111.202', '2018-03-28 21:08:12', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2290', 'Philippines', '87.79.111.202', '2018-03-28 21:08:12', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2291', 'Philippines', '43.250.9.14', '2018-03-28 21:17:52', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2292', 'Philippines', '43.250.9.14', '2018-03-28 21:17:53', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2293', 'Philippines', '35.198.15.246', '2018-03-28 22:20:54', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2294', 'Philippines', '190.94.140.218', '2018-03-28 23:31:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2295', 'Philippines', '190.94.140.218', '2018-03-28 23:31:12', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2296', 'Philippines', '88.76.199.228', '2018-03-28 23:40:07', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2297', 'Philippines', '88.76.199.228', '2018-03-28 23:40:09', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2298', 'Philippines', '139.162.79.87', '2018-03-28 23:51:56', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2299', 'Philippines', '200.6.147.209', '2018-03-28 23:57:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2300', 'Philippines', '200.6.147.209', '2018-03-28 23:57:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2301', 'Philippines', '200.6.147.209', '2018-03-28 23:57:31', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2302', 'Philippines', '115.112.118.252', '2018-03-29 00:00:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2303', 'Philippines', '201.238.155.139', '2018-03-29 00:52:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2304', 'Philippines', '201.238.155.139', '2018-03-29 00:52:21', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2305', 'Philippines', '190.94.141.109', '2018-03-29 01:29:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2306', 'Philippines', '190.94.141.109', '2018-03-29 01:29:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2307', 'Philippines', '190.94.141.109', '2018-03-29 01:29:20', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2308', 'Philippines', '202.62.117.124', '2018-03-29 01:47:32', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2309', 'Philippines', '157.52.156.49', '2018-03-29 01:52:26', 'http://204.44.65.4:54681/?rands=_879079585828806035822100', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2310', 'Philippines', '190.94.139.239', '2018-03-29 02:02:35', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2311', 'Philippines', '190.94.139.239', '2018-03-29 02:03:08', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2312', 'Philippines', '78.189.94.254', '2018-03-29 02:39:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2313', 'Philippines', '35.189.185.117', '2018-03-29 02:43:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2314', 'Philippines', '191.100.9.138', '2018-03-29 03:08:24', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2315', 'Philippines', '191.100.9.138', '2018-03-29 03:08:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2316', 'Philippines', '191.100.9.138', '2018-03-29 03:08:25', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2317', 'Philippines', '142.252.251.228', '2018-03-29 03:24:39', 'http://www.baidu.com/?rands=_1737644058625800844072880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2318', 'Philippines', '142.252.251.228', '2018-03-29 03:24:39', 'http://142.252.251.228:19946/?rands=_1049627528810677633343896', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2319', 'Philippines', '204.44.65.4', '2018-03-29 03:35:32', 'http://www.baidu.com/?rands=_1204036420821834362516832', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2320', 'Philippines', '191.100.8.212', '2018-03-29 03:51:06', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2321', 'Philippines', '191.100.8.212', '2018-03-29 03:51:15', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2322', 'Philippines', '190.94.135.237', '2018-03-29 03:59:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2323', 'Philippines', '190.94.135.237', '2018-03-29 03:59:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2324', 'Philippines', '190.94.135.237', '2018-03-29 03:59:05', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2325', 'Philippines', '190.94.140.165', '2018-03-29 04:39:08', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2326', 'Philippines', '190.94.140.165', '2018-03-29 04:39:12', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2327', 'Philippines', '190.94.136.174', '2018-03-29 04:40:08', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2328', 'Philippines', '190.94.136.174', '2018-03-29 04:40:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2329', 'Philippines', '193.112.9.95', '2018-03-29 05:46:25', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2330', 'Philippines', '191.100.10.188', '2018-03-29 05:58:26', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2331', 'Philippines', '191.100.10.188', '2018-03-29 05:58:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2332', 'Philippines', '208.71.37.99', '2018-03-29 06:07:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2333', 'Philippines', '208.71.37.99', '2018-03-29 06:07:14', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2334', 'Philippines', '208.71.37.99', '2018-03-29 06:07:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2335', 'Philippines', '89.248.172.90', '2018-03-29 07:36:49', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2336', 'Philippines', '61.63.100.103', '2018-03-29 08:10:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2337', 'Philippines', '61.63.100.103', '2018-03-29 08:10:31', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2338', 'Philippines', '61.63.100.103', '2018-03-29 08:10:32', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2339', 'Philippines', '122.117.124.124', '2018-03-29 08:37:30', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2340', 'Philippines', '122.117.124.124', '2018-03-29 08:37:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2341', 'Philippines', '201.238.154.149', '2018-03-29 09:18:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2342', 'Philippines', '201.238.154.149', '2018-03-29 09:18:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2343', 'Philippines', '201.238.154.149', '2018-03-29 09:18:21', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2344', 'Philippines', '61.240.145.4', '2018-03-29 14:14:28', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2345', 'Philippines', '157.52.156.49', '2018-03-29 14:23:05', 'http://204.44.65.4:54681/?rands=_32089743404719003351488', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2346', 'Philippines', '223.17.215.213', '2018-03-29 15:23:05', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2347', 'Philippines', '142.252.251.228', '2018-03-29 16:28:19', 'http://www.baidu.com/?rands=_6093471404301904810888', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2348', 'Philippines', '142.252.251.228', '2018-03-29 16:28:20', 'http://142.252.251.228:19946/?rands=_1671065354012639002207516', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2349', 'Philippines', '27.3.241.135', '2018-03-29 17:56:16', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2350', 'Philippines', '89.248.172.90', '2018-03-29 18:29:42', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2351', 'Philippines', '204.44.65.4', '2018-03-29 18:32:44', 'http://www.baidu.com/?rands=_2052106836411323622081372', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2352', 'Philippines', '125.64.94.208', '2018-03-29 20:24:07', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2353', 'Philippines', '107.170.196.192', '2018-03-29 22:35:37', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2354', 'Philippines', '157.52.156.49', '2018-03-30 02:50:02', 'http://204.44.65.4:54681/?rands=_1198835565410707451307900', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2355', 'Philippines', '142.252.251.228', '2018-03-30 05:04:39', 'http://www.baidu.com/?rands=_2060828834036788404767168', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2356', 'Philippines', '142.252.251.228', '2018-03-30 05:04:40', 'http://142.252.251.228:19946/?rands=_682056397630097591164480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2357', 'Philippines', '35.229.179.215', '2018-03-30 06:56:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2358', 'Philippines', '196.52.43.111', '2018-03-30 07:12:41', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2359', 'Philippines', '204.44.65.4', '2018-03-30 09:25:48', 'http://www.baidu.com/?rands=_223040466432023055806452', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2360', 'Philippines', '60.191.38.78', '2018-03-30 09:46:44', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2361', 'Philippines', '196.52.43.88', '2018-03-30 13:14:37', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2362', 'Philippines', '172.104.108.109', '2018-03-30 13:15:53', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2363', 'Philippines', '142.252.251.228', '2018-03-30 18:21:44', 'http://142.252.251.228:19946/?rands=_5025473044610832381444', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2364', 'Philippines', '142.252.251.228', '2018-03-30 18:21:45', 'http://www.baidu.com/?rands=_2028836181232532936725760', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2365', 'Philippines', '60.191.38.78', '2018-03-30 22:19:34', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2366', 'Philippines', '60.191.29.20', '2018-03-30 23:47:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2367', 'Philippines', '60.191.48.204', '2018-03-30 23:47:30', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2368', 'Philippines', '60.191.29.20', '2018-03-31 00:03:07', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2369', 'Philippines', '204.44.65.4', '2018-03-31 00:38:34', 'http://www.baidu.com/?rands=_9714130416017079902959200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2370', 'Philippines', '89.248.172.90', '2018-03-31 01:02:54', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2371', 'Philippines', '157.52.156.49', '2018-03-31 03:39:18', 'http://204.44.65.4:54681/?rands=_29230079483681598781613247480', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2372', 'Philippines', '121.58.211.162', '2018-03-31 06:00:35', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2373', 'Philippines', '121.58.211.162', '2018-03-31 06:00:50', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2374', 'Philippines', '121.58.211.162', '2018-03-31 06:02:38', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2375', 'Philippines', '121.58.211.162', '2018-03-31 06:03:21', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2376', 'Philippines', '121.58.211.162', '2018-03-31 06:03:32', 'http://ssmcgroup.ph/Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2377', 'Philippines', '121.58.211.162', '2018-03-31 06:03:38', 'http://ssmcgroup.ph/Medical-Services?page=2', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2378', 'Philippines', '121.58.211.162', '2018-03-31 06:03:41', 'http://ssmcgroup.ph/Medical-Services?page=1', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2379', 'Philippines', '142.252.251.228', '2018-03-31 08:07:04', 'http://142.252.251.228:19946/?rands=_29702790727062031887590160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2380', 'Philippines', '112.207.245.210', '2018-03-31 09:26:37', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2381', 'Philippines', '112.207.245.210', '2018-03-31 09:28:05', 'http://ssmcgroup.ph/News?news=2&button=NEXT&news-title=Online%20consultation', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2382', 'Philippines', '112.207.245.210', '2018-03-31 09:28:33', 'http://ssmcgroup.ph/ContactUs', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2383', 'Philippines', '112.207.245.210', '2018-03-31 09:28:55', 'http://ssmcgroup.ph/About', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2384', 'Philippines', '112.207.245.210', '2018-03-31 09:29:22', 'http://ssmcgroup.ph/Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2385', 'Philippines', '112.207.245.210', '2018-03-31 09:30:09', 'http://ssmcgroup.ph/Careers', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2386', 'Philippines', '112.207.245.210', '2018-03-31 09:30:55', 'http://ssmcgroup.ph/Services', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2387', 'Philippines', '204.44.65.4', '2018-03-31 15:40:41', 'http://www.baidu.com/?rands=_3044477022675988555636', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2388', 'Philippines', '139.162.111.98', '2018-03-31 18:18:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2389', 'Philippines', '124.107.103.160', '2018-03-31 19:05:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2390', 'Philippines', '201.92.139.88', '2018-03-31 19:29:52', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2391', 'Philippines', '177.189.136.208', '2018-03-31 20:29:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2392', 'Philippines', '217.75.209.98', '2018-03-31 21:18:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2393', 'Philippines', '98.127.86.52', '2018-03-31 21:32:27', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2394', 'Philippines', '111.125.137.18', '2018-03-31 21:46:32', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2395', 'Philippines', '149.91.101.81', '2018-03-31 22:16:05', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2396', 'Philippines', '78.90.88.149', '2018-03-31 22:56:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2397', 'Philippines', '59.126.150.50', '2018-03-31 23:03:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2398', 'Philippines', '124.148.155.11', '2018-03-31 23:11:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2399', 'Philippines', '108.178.61.62', '2018-03-31 23:33:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2400', 'Philippines', '60.49.107.119', '2018-03-31 23:49:51', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2401', 'Philippines', '172.104.108.109', '2018-04-01 00:05:58', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2402', 'Philippines', '142.252.251.228', '2018-04-01 00:13:03', 'http://www.baidu.com/?rands=_1218457538028786682661876', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2403', 'Philippines', '83.167.125.15', '2018-04-01 00:23:16', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2404', 'Philippines', '5.32.181.181', '2018-04-01 01:21:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2405', 'Philippines', '96.39.161.51', '2018-04-01 01:28:50', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2406', 'Philippines', '129.72.2.75', '2018-04-01 01:31:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2407', 'Philippines', '201.43.104.149', '2018-04-01 01:54:34', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2408', 'Philippines', '185.145.185.111', '2018-04-01 01:55:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2409', 'Philippines', '164.132.91.1', '2018-04-01 03:52:10', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2410', 'Philippines', '157.52.156.49', '2018-04-01 04:31:43', 'http://204.44.65.4:54681/?rands=_64767824969544651578240', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2411', 'Philippines', '118.123.12.177', '2018-04-01 05:04:11', 'http://www.baidu.com/?rands=_1472021071024246903234864', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2412', 'Philippines', '118.123.12.177', '2018-04-01 05:04:11', 'http://www.search.com/?rands=_1185093221626646362649496', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2413', 'Philippines', '118.123.12.177', '2018-04-01 05:04:12', 'http://www.so.com/?rands=_157508746885017744072248', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2414', 'Philippines', '118.123.12.177', '2018-04-01 05:04:12', 'http://www.baidu.com/?rands=_4206916572843777699408', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2415', 'Philippines', '118.123.12.177', '2018-04-01 05:04:13', 'http://www.search.com/?rands=_1472016635020902502894352', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2416', 'Philippines', '118.123.12.177', '2018-04-01 05:04:15', 'http://www.so.com/?rands=_1582839610816637042926368', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2417', 'Philippines', '35.189.130.40', '2018-04-01 07:57:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2418', 'Philippines', '177.84.192.17', '2018-04-01 09:07:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2419', 'Philippines', '177.81.166.230', '2018-04-01 09:08:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2420', 'Philippines', '60.191.38.78', '2018-04-01 12:03:11', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2421', 'Philippines', '139.162.79.87', '2018-04-01 14:27:38', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2422', 'Philippines', '47.203.88.161', '2018-04-01 16:05:37', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2423', 'Philippines', '157.52.156.49', '2018-04-01 16:59:49', 'http://204.44.65.4:54681/?rands=_125192680023721725830636', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2424', 'Philippines', '178.73.215.171', '2018-04-01 19:16:42', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2425', 'Philippines', '142.252.251.228', '2018-04-01 19:41:56', 'http://142.252.251.228:19946/?rands=_1625540023040323736488', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2426', 'Philippines', '66.102.7.234', '2018-04-02 01:11:52', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2427', 'Philippines', '45.127.249.16', '2018-04-02 03:28:06', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2428', 'Philippines', '66.102.7.234', '2018-04-02 03:39:16', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2429', 'Philippines', '66.102.7.234', '2018-04-02 03:39:17', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2430', 'Philippines', '139.162.111.98', '2018-04-02 04:30:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2431', 'Philippines', '157.52.156.49', '2018-04-02 05:23:35', 'http://204.44.65.4:54681/?rands=_13710818160112884454256', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2432', 'Philippines', '112.207.245.210', '2018-04-02 06:05:47', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2433', 'Philippines', '218.2.97.66', '2018-04-02 07:10:01', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2434', 'Philippines', '142.252.251.228', '2018-04-02 09:58:40', 'http://142.252.251.228:19946/?rands=_4251695020257040056408058148896', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2435', 'Philippines', '142.252.251.228', '2018-04-02 09:58:40', 'http://www.baidu.com/?rands=_1032023566412938881433196', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2436', 'Philippines', '117.50.20.164', '2018-04-02 11:32:57', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2437', 'Philippines', '204.44.65.4', '2018-04-02 12:31:16', 'http://www.baidu.com/?rands=_297025840036313565677140', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2438', 'Philippines', '118.123.12.177', '2018-04-02 13:53:06', 'http://www.so.com/?rands=_358240618226585913402080', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2439', 'Philippines', '118.123.12.177', '2018-04-02 13:53:07', 'http://www.baidu.com/?rands=_4351837802272704446576', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2440', 'Philippines', '35.187.211.248', '2018-04-02 14:06:45', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2441', 'Philippines', '35.187.193.40', '2018-04-02 14:09:39', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2442', 'Philippines', '177.94.234.22', '2018-04-02 14:52:55', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2443', 'Philippines', '157.52.156.49', '2018-04-02 17:45:19', 'http://204.44.65.4:54681/?rands=_219234585218442892823632', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2444', 'Philippines', '172.104.108.109', '2018-04-02 18:25:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2445', 'Philippines', '35.187.211.248', '2018-04-02 19:16:03', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2446', 'Philippines', '209.126.136.4', '2018-04-02 20:54:21', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2447', 'Philippines', '118.123.12.177', '2018-04-03 01:01:31', 'http://www.baidu.com/?rands=_358242756027443523572184', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2448', 'Philippines', '118.123.12.177', '2018-04-03 01:01:31', 'http://www.so.com/?rands=_14004108836026645401662648', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2449', 'Philippines', '118.123.12.177', '2018-04-03 01:01:32', 'http://www.search.com/?rands=_1625527842375253024776', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2450', 'Philippines', '142.252.251.228', '2018-04-03 01:37:25', 'http://142.252.251.228:19946/?rands=_2205015307048105586587460', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2451', 'Philippines', '142.252.251.228', '2018-04-03 01:37:26', 'http://www.baidu.com/?rands=_14571208665623610453748320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2452', 'Philippines', '118.123.12.177', '2018-04-03 02:45:24', 'http://www.so.com/?rands=_818448340827184921077144', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2453', 'Philippines', '118.123.12.177', '2018-04-03 02:45:24', 'http://www.baidu.com/?rands=_175811295905731382134216', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2454', 'Philippines', '118.123.12.177', '2018-04-03 02:45:24', 'http://www.search.com/?rands=_682042969626214031048032', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2455', 'Philippines', '204.44.65.4', '2018-04-03 03:32:35', 'http://www.baidu.com/?rands=_112389125281216084608540', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2456', 'Philippines', '66.102.7.230', '2018-04-03 03:47:42', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2457', 'Philippines', '118.123.12.177', '2018-04-03 04:41:18', 'http://www.baidu.com/?rands=_126008746884824753952476', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2458', 'Philippines', '118.123.12.177', '2018-04-03 04:41:19', 'http://www.so.com/?rands=_114106866645153882791428', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2459', 'Philippines', '196.52.43.119', '2018-04-03 05:09:54', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2460', 'Philippines', '35.187.193.40', '2018-04-03 07:10:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2461', 'Philippines', '89.248.172.90', '2018-04-03 07:45:09', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2462', 'Philippines', '196.52.43.129', '2018-04-03 13:08:14', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2463', 'Philippines', '142.252.251.228', '2018-04-03 18:06:55', 'http://www.baidu.com/?rands=_1461013746189324360014122632', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2464', 'Philippines', '204.44.65.4', '2018-04-03 18:28:34', 'http://www.baidu.com/?rands=_112389505501283644915776', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2465', 'Philippines', '157.52.156.49', '2018-04-03 18:39:38', 'http://204.44.65.4:54681/?rands=_10135104534416156501241472', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2466', 'Philippines', '60.250.62.112', '2018-04-03 21:53:06', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2467', 'Philippines', '60.250.62.112', '2018-04-03 21:53:06', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2468', 'Philippines', '60.250.62.112', '2018-04-03 21:53:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2469', 'Philippines', '141.212.122.48', '2018-04-04 02:09:48', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2470', 'Philippines', '164.52.6.186', '2018-04-04 03:58:53', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2471', 'Philippines', '209.126.136.4', '2018-04-04 06:46:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2472', 'Philippines', '157.52.156.49', '2018-04-04 07:06:05', 'http://204.44.65.4:54681/?rands=_164521145424171780704880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2473', 'Philippines', '58.180.56.19', '2018-04-04 09:05:40', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2474', 'Philippines', '204.44.65.4', '2018-04-04 09:24:55', 'http://www.baidu.com/?rands=_283501804044530722534733880', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2475', 'Philippines', '142.252.251.228', '2018-04-04 10:43:29', 'http://142.252.251.228:19946/?rands=_1294562633614267763409212', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2476', 'Philippines', '142.252.251.228', '2018-04-04 10:43:29', 'http://www.baidu.com/?rands=_54182510884310134089032', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2477', 'Philippines', '195.154.61.206', '2018-04-04 10:53:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2478', 'Philippines', '5.188.87.14', '2018-04-04 13:43:56', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2479', 'Philippines', '157.52.156.49', '2018-04-04 19:34:54', 'http://204.44.65.4:54681/?rands=_17058110431759745216940', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2480', 'Philippines', '89.248.168.37', '2018-04-05 03:51:46', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2481', 'Philippines', '142.252.251.228', '2018-04-05 04:15:42', 'http://142.252.251.228:19946/?rands=_1368106836411323622032968', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2482', 'Philippines', '142.252.251.228', '2018-04-05 04:15:43', 'http://www.baidu.com/?rands=_103953213201121130233376', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2483', 'Philippines', '5.188.87.14', '2018-04-05 06:29:23', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2484', 'Philippines', '66.102.6.93', '2018-04-05 07:33:21', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2485', 'Philippines', '157.52.156.49', '2018-04-05 08:05:39', 'http://204.44.65.4:54681/?rands=_109264785881102788186840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2486', 'Philippines', '107.170.241.5', '2018-04-05 10:39:08', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2487', 'Philippines', '117.50.20.164', '2018-04-05 10:47:06', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2488', 'Philippines', '195.22.127.231', '2018-04-05 14:30:32', 'http://138.197.15.53/.ftpconfig', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2489', 'Philippines', '204.44.65.4', '2018-04-05 15:35:29', 'http://www.baidu.com/?rands=_1704515055343002760591400', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2490', 'Philippines', '139.162.79.87', '2018-04-05 17:55:17', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2491', 'Philippines', '80.82.77.139', '2018-04-05 21:34:55', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2492', 'Philippines', '142.252.251.228', '2018-04-05 21:37:34', 'http://www.baidu.com/?rands=_21186342039658797336403200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2493', 'Philippines', '142.252.251.228', '2018-04-05 21:37:36', 'http://142.252.251.228:19946/?rands=_1625536542755293469596', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2494', 'Philippines', '35.201.5.101', '2018-04-05 22:04:01', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2495', 'Philippines', '104.155.150.213', '2018-04-05 22:48:13', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2496', 'Philippines', '104.155.150.213', '2018-04-05 23:18:31', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2497', 'Philippines', '222.186.50.75', '2018-04-06 00:17:11', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2498', 'Philippines', '222.186.50.75', '2018-04-06 00:17:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2499', 'Philippines', '139.162.111.98', '2018-04-06 01:42:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2500', 'Philippines', '54.241.139.60', '2018-04-06 02:43:45', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2501', 'Philippines', '204.44.65.4', '2018-04-06 06:25:05', 'http://www.baidu.com/?rands=_1448027740619185243158560', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2502', 'Philippines', '139.162.79.87', '2018-04-06 06:51:17', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2503', 'Philippines', '157.52.156.49', '2018-04-06 09:01:06', 'http://204.44.65.4:54681/?rands=_120590048014998083247528', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2504', 'Philippines', '104.155.150.213', '2018-04-06 10:16:41', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2505', 'Philippines', '125.212.217.214', '2018-04-06 10:34:55', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2506', 'Philippines', '66.102.6.91', '2018-04-06 11:02:36', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2507', 'Philippines', '142.252.251.228', '2018-04-06 14:16:31', 'http://142.252.251.228:19946/?rands=_297031008045869766835740', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2508', 'Philippines', '142.252.251.228', '2018-04-06 14:16:31', 'http://www.baidu.com/?rands=_891643760013508104221984', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2509', 'Philippines', '222.178.10.230', '2018-04-06 15:05:18', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2510', 'Philippines', '47.203.88.161', '2018-04-06 15:43:58', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2511', 'Philippines', '35.231.149.70', '2018-04-06 16:36:52', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2512', 'Philippines', '35.197.22.228', '2018-04-06 18:09:10', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2513', 'Philippines', '141.212.122.32', '2018-04-06 20:45:45', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2514', 'Philippines', '157.52.156.49', '2018-04-06 21:26:55', 'http://204.44.65.4:54681/?rands=_481212991206649504787840', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2515', 'Philippines', '204.44.65.4', '2018-04-06 21:27:00', 'http://www.baidu.com/?rands=_1549096000017691661032576', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2516', 'Philippines', '179.218.11.66', '2018-04-07 01:28:09', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2517', 'Philippines', '179.218.11.66', '2018-04-07 01:28:22', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2518', 'Philippines', '172.104.108.109', '2018-04-07 02:05:27', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2519', 'Philippines', '118.123.12.177', '2018-04-07 03:11:21', 'http://www.search.com/?rands=_6237257056859533167552', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2520', 'Philippines', '118.123.12.177', '2018-04-07 03:11:21', 'http://www.so.com/?rands=_382426730012404701121600', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2521', 'Philippines', '118.123.12.177', '2018-04-07 03:11:22', 'http://www.baidu.com/?rands=_63841734081206216215676', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2522', 'Philippines', '121.58.211.162', '2018-04-07 03:17:36', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2523', 'Philippines', '130.105.222.13', '2018-04-07 04:32:38', 'http://www.ssmcgroup.ph/Branches', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2524', 'Philippines', '130.105.222.13', '2018-04-07 04:37:13', 'http://www.ssmcgroup.ph/About', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2525', 'Philippines', '66.102.6.92', '2018-04-07 06:14:59', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2526', 'Philippines', '157.52.156.49', '2018-04-07 09:56:17', 'http://204.44.65.4:54681/?rands=_124742891881083759233376', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2527', 'Philippines', '204.44.65.4', '2018-04-07 12:21:24', 'http://www.baidu.com/?rands=_10890247311620429376583688', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2528', 'Philippines', '183.129.160.229', '2018-04-07 14:04:54', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2529', 'Philippines', '130.105.223.174', '2018-04-07 14:52:36', 'http://www.ssmcgroup.ph/About', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2530', 'Philippines', '104.131.181.178', '2018-04-07 19:55:40', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2531', 'Philippines', '89.248.172.90', '2018-04-07 22:12:15', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2532', 'Philippines', '66.240.219.146', '2018-04-08 00:37:11', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2533', 'Philippines', '204.44.65.4', '2018-04-08 03:52:51', 'http://www.baidu.com/?rands=_83460904017791294510492', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2534', 'Philippines', '211.23.154.138', '2018-04-08 07:37:41', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2535', 'Philippines', '157.52.156.49', '2018-04-08 10:51:06', 'http://204.44.65.4:54681/?rands=_100262550405515201054336', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2536', 'Philippines', '34.224.79.248', '2018-04-08 11:18:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2537', 'Philippines', '178.73.215.171', '2018-04-08 19:19:27', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2538', 'Philippines', '204.44.65.4', '2018-04-08 19:24:00', 'http://www.baidu.com/?rands=_113046272127796161898320', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2539', 'Philippines', '164.132.91.1', '2018-04-08 20:00:04', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2540', 'Philippines', '84.40.119.175', '2018-04-09 01:53:50', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2541', 'Philippines', '118.123.12.177', '2018-04-09 02:50:04', 'http://www.so.com/?rands=_963092296420095292436000', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2542', 'Philippines', '118.123.12.177', '2018-04-09 02:50:04', 'http://www.search.com/?rands=_1536633711604376581107032', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2543', 'Philippines', '47.203.88.161', '2018-04-09 04:34:46', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2544', 'Philippines', '212.83.175.134', '2018-04-09 04:51:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2545', 'Philippines', '142.252.251.228', '2018-04-09 04:52:14', 'http://www.baidu.com/?rands=_19194123600013967285723472', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2546', 'Philippines', '52.53.219.164', '2018-04-09 05:21:43', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2547', 'Philippines', '199.168.141.69', '2018-04-09 08:30:36', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2548', 'Philippines', '164.52.24.140', '2018-04-09 11:14:13', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2549', 'Philippines', '157.52.156.49', '2018-04-09 11:32:23', 'http://204.44.65.4:54681/?rands=_382434749017366581514160', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2550', 'Philippines', '66.102.6.91', '2018-04-09 13:16:00', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2551', 'Philippines', '211.23.154.138', '2018-04-09 16:26:16', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2552', 'Philippines', '195.22.127.231', '2018-04-09 18:05:29', 'http://138.197.15.53:8080/.ftpconfig', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2553', 'Philippines', '195.22.127.231', '2018-04-09 18:05:29', 'http://138.197.15.53:8080/.remote-sync.json', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2554', 'Philippines', '196.52.43.130', '2018-04-09 21:07:13', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2555', 'Philippines', '209.126.136.4', '2018-04-09 22:21:12', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2556', 'Philippines', '157.52.156.49', '2018-04-10 00:04:22', 'http://204.44.65.4:54681/?rands=_109003524045238302656200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2557', 'Philippines', '196.52.43.61', '2018-04-10 00:15:24', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2558', 'Philippines', '139.162.111.98', '2018-04-10 01:26:38', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2559', 'Philippines', '204.44.65.4', '2018-04-10 01:56:02', 'http://www.baidu.com/?rands=_131668006432830206721200', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2560', 'Philippines', '118.123.12.177', '2018-04-10 04:10:48', 'http://www.so.com/?rands=_297020672030579844866120', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2561', 'Philippines', '107.170.193.174', '2018-04-10 07:37:47', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2562', 'Philippines', '157.52.156.49', '2018-04-10 12:28:55', 'http://204.44.65.4:54681/?rands=_8316224924747420155584', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2563', 'Philippines', '142.252.251.228', '2018-04-10 14:46:35', 'http://www.baidu.com/?rands=_19701555920247065686048', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2564', 'Philippines', '142.252.251.228', '2018-04-10 14:46:35', 'http://142.252.251.228:19946/?rands=_103953373861195872257312', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2565', 'Philippines', '204.44.65.4', '2018-04-10 17:13:31', 'http://www.baidu.com/?rands=_1243532384016563844623696', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2566', 'Philippines', '139.162.111.98', '2018-04-10 17:48:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2567', 'Philippines', '92.39.53.107', '2018-04-10 20:39:13', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2568', 'Philippines', '157.52.156.49', '2018-04-11 01:01:34', 'http://204.44.65.4:54681/?rands=_238836342623155472806716', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2569', 'Philippines', '209.126.136.4', '2018-04-11 03:24:52', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2570', 'Philippines', '94.102.49.193', '2018-04-11 06:10:52', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2571', 'Philippines', '142.252.251.228', '2018-04-11 07:31:41', 'http://www.baidu.com/?rands=_11720121273641899689185980', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2572', 'Philippines', '66.102.6.91', '2018-04-11 08:21:35', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2573', 'Philippines', '204.44.65.4', '2018-04-11 08:21:55', 'http://www.baidu.com/?rands=_1133319562401029817514401440', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2574', 'Philippines', '157.52.156.49', '2018-04-11 13:25:09', 'http://204.44.65.4:54681/?rands=_2997079338224232652982012', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2575', 'Philippines', '177.235.25.212', '2018-04-11 21:05:21', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2576', 'Philippines', '177.235.25.212', '2018-04-11 21:05:41', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2577', 'Philippines', '157.52.156.49', '2018-04-12 01:53:29', 'http://204.44.65.4:54681/?rands=_347468336814512773640660', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2578', 'Philippines', '54.80.203.60', '2018-04-12 02:51:25', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2579', 'Philippines', '117.50.7.159', '2018-04-12 08:50:16', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2580', 'Philippines', '204.44.65.4', '2018-04-12 14:43:15', 'http://www.baidu.com/?rands=_1114545948015759455088032', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2581', 'Philippines', '42.51.204.165', '2018-04-12 15:08:05', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2582', 'Philippines', '139.162.119.197', '2018-04-12 17:02:20', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2583', 'Philippines', '196.52.43.88', '2018-04-12 21:42:17', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2584', 'Philippines', '34.212.17.2', '2018-04-12 23:43:53', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2585', 'Philippines', '157.52.156.49', '2018-04-13 02:46:07', 'http://204.44.65.4:54681/?rands=_8600139256849114978768', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2586', 'Philippines', '66.102.6.93', '2018-04-13 04:08:38', 'http://ssmcgroup.ph/SsmcHealthHospitals', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2587', 'Philippines', '172.104.108.109', '2018-04-13 05:15:53', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2588', 'Philippines', '204.44.65.4', '2018-04-13 06:09:27', 'http://www.baidu.com/?rands=_9045752570962523717376', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2589', 'Philippines', '89.248.172.90', '2018-04-13 06:22:25', 'http://httpheader.net/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2590', 'Philippines', '121.58.211.162', '2018-04-13 06:46:47', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2591', 'Philippines', '23.99.101.118', '2018-04-13 06:47:09', 'http://ssmcgroup.ph/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2592', 'Philippines', '107.170.237.233', '2018-04-13 08:45:52', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2593', 'Philippines', '168.235.93.142', '2018-04-13 12:43:45', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2594', 'Philippines', '159.65.101.175', '2018-04-13 13:19:22', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2595', 'Philippines', '159.65.101.175', '2018-04-13 13:19:47', 'http://138.197.15.53:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2596', 'Philippines', '142.252.251.228', '2018-04-13 15:00:44', 'http://www.baidu.com/?rands=_1582872619838027525852736', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2597', 'Philippines', '208.100.26.232', '2018-04-13 20:19:00', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2598', 'Philippines', '208.100.26.232', '2018-04-13 20:19:00', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2599', 'Philippines', '208.100.26.232', '2018-04-13 20:19:01', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2600', 'Philippines', '204.44.65.4', '2018-04-13 21:53:05', 'http://www.baidu.com/?rands=_9102135415022213324635264', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2601', 'Philippines', '193.146.159.13', '2018-04-13 23:09:23', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2602', 'Philippines', '193.146.159.13', '2018-04-13 23:09:34', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2603', 'Philippines', '193.146.159.13', '2018-04-13 23:09:34', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2604', 'Philippines', '31.184.193.154', '2018-04-14 01:42:26', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2605', 'Philippines', '107.170.209.132', '2018-04-14 02:45:12', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2606', 'Philippines', '107.170.209.132', '2018-04-14 02:45:28', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2607', 'Philippines', '107.170.209.132', '2018-04-14 02:45:28', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2608', 'Philippines', '190.94.148.28', '2018-04-14 03:21:12', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2609', 'Philippines', '103.52.146.172', '2018-04-14 03:24:44', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2610', 'Philippines', '103.52.146.172', '2018-04-14 03:24:55', 'http://138.197.15.53/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2611', 'Philippines', '103.52.146.172', '2018-04-14 03:24:55', 'http://localhost:8080/', 'Manila', '15', '0');
INSERT INTO `analytics` VALUES ('2612', 'Philippines', '157.52.156.49', '2018-04-14 03:38:59', 'http://204.44.65.4:54681/?rands=_274037245614344472242296', 'Manila', '15', '0');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citykey` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', 'MAKATI', 'Makati City');
INSERT INTO `city` VALUES ('3', 'MANILA', 'Manila City');
INSERT INTO `city` VALUES ('4', 'TAGUIG', 'Taguig City');

-- ----------------------------
-- Table structure for clinic
-- ----------------------------
DROP TABLE IF EXISTS `clinic`;
CREATE TABLE `clinic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `dateupdated` datetime DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `description` text,
  `logo` longtext,
  `address1` varchar(512) DEFAULT NULL,
  `map` varchar(1024) DEFAULT NULL,
  `address2` varchar(512) DEFAULT NULL,
  `type` varchar(45) NOT NULL DEFAULT '',
  `cityid` varchar(11) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `phone` varchar(75) DEFAULT NULL,
  `mobile` varchar(75) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clinic
-- ----------------------------
INSERT INTO `clinic` VALUES ('1', 'SOUTH SUPERHIGHWAY MEDICAL CENTER', '2017-10-04 14:46:38', '2017-07-14 22:10:15', '<p>Owned and Operated by: SSMC Group of Hospitals and Clinics,Inc</p>\n\n<p>Km.17, West Service Road,Brgy. Marcelo Green Pque.City</p>\n\n<p>OPEN : 24 HOURS ( IN/OUT PATIENT &amp; INDUSTRIAL SERVICES 8am-5pm)</p>\n\n<p>Trunklines : 8218454*8235250*8232027*8232357</p>\n\n<p>Telefax No.632 821 8452</p>\n\n<p>BIR VAT Reg.TIN : 141-954-388-000/008-100-146-000</p>\n\n<p>Coordinators: Drs.Jose Rabe &amp; Erlinda C.Rabe</p>\n\n<p>Owners: SSMC Group of Hospitals and Clinics,Inc.</p>\n', null, 'Clinic Description', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7726.426668985725!2d121.0445256!3d14.4724359!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9ca13731d6e5d065!2sSSMC!5e0!3m2!1sen!2sph!4v1507128364747', 'Test Address', 'HOSPITALS', '1', '', '', '', 'HospitalAndClinic');
INSERT INTO `clinic` VALUES ('2', 'CRUZ-RABE MATERNITY & GENERAL HOSPITAL', '2017-12-15 08:28:47', '2017-07-15 00:16:27', '<p>37 Gen.Luna St.Tuktukan, Taguig City</p>\n\n<p>OPEN 24 HOURS (IN-OUT PATIENT SERVICES)</p>\n\n<p>Trunk Lines : 642 34 33*642 27 96</p>\n\n<p>Fax No.632 642 07 47</p>\n\n<p>Contact Person : Ms.Cris Laodenio/Ms.Mercy Cruz</p>\n\n<p>BIR VAT Reg.TIN: 139-280-600-000</p>\n\n<p>Coordinators/Owner: Jose C. Rabe,M.D./Erlinda Cruz-Rabe,M.D.</p>\n', null, '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1931.1145239643902!2d121.06944518604641!3d14.528886954522445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c8a48a0465e1%3A0x76a6f3d3a2c75f99!2sCruz-Rabe+Maternity+%26+General+Hospital!5e0!3m2!1sen!2sph!4v1507128504376', '', 'CLINIC', '1', '', '', '', 'HospitalAndClinic');
INSERT INTO `clinic` VALUES ('23', 'SSMC SATELLITE HOSPITAL', '2017-10-04 14:54:04', '2017-10-04 14:54:04', '<p>Gateway Business Park, Brgy.Javalera General Trias Cavite</p>\n\n<p>OPEN : 24 hours ( IN-OUT PATIENT&amp;INDUSTRIAL SERVICES)</p>\n\n<p>Trunk Lines : 046 4330210*0464330115</p>\n\n<p>Contact Persons: Ms.Wilma Panotes/Ms.Myrna M.Geneta</p>\n\n<p>BIR VAT Reg.TIN: 139-280-600-001</p>\n\n<p>Coordinator: Jose C.Rabe,M.D. Owner: Erlinda Cruz-Rabe,MD.</p>\n', null, '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3866.8664106500655!2d120.91913146133768!3d14.26101208362225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x116ee3dc2ec02aed!2sGateway+Business+Park!5e0!3m2!1sen!2sph!4v1507128799832', '', 'CLINIC', '1', '', '0464330115 ', '0464330115 ', 'HospitalAndClinic');
INSERT INTO `clinic` VALUES ('24', 'SOUTH SUPERHIGHWAY MEDICAL CLINIC', '2017-10-04 14:56:33', '2017-10-04 14:56:33', '<p>2nd Floor, HERNZ Building (in front of SM SOUTHMALL) 481 Real St., Alabang-Zapote Rd., Almanza I,Las Pi&ntilde;as City</p>\n\n<p>OPEN: 9AM-6PM (Out-Patient /Industrial Clinic) (OUT-PATIENT/INDUSTRIAL SERVICES)</p>\n\n<p>Telefax : 802 26 63</p>\n\n<p>Contact Persons :Ms.Alma Tuibeo/Ms.Clemencia Villapa/Pinky Hidalgo</p>\n\n<p>BIR VAT Reg.TIN:141-954-388-001</p>\n\n<p>Coordinator/Owner: Jose C.Rabe,M.D.</p>\n', null, '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3863.8902812409788!2d121.01057906530582!3d14.433486085018528!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397d1ddf7afdf47%3A0xf2707b224ffa70ac!2sALZA+LAND+AND+PROPERTY+MANAGEMENT+CORPORATION!5e0!3m2!1sen!2sph!4v1507128977978', '', 'CLINIC', '1', '', '', '', 'HospitalAndClinic');
INSERT INTO `clinic` VALUES ('25', 'SSMC SATELLITE MEDICAL & INDUSTRIAL CLINIC-STA.ROSA', '2017-10-04 15:00:11', '2017-10-04 15:00:11', '<p>Old National Highway (in front of PNB) Balibago Sta.Rosa,Laguna</p>\n\n<p>OPEN : 9AM-6PM ( OUT-PATIENT/INDUSTRIAL SERVICES)</p>\n\n<p>Contact Person: Ms.Myrna Geneta-OIC</p>\n\n<p>Tel No. 632 775 72 74</p>\n\n<p>BIR VAT Reg.TIN: 139-280-600-003</p>\n\n<p>Coordinator/Owner:Erlinda Cruz-Rabe,M.D.</p>\n', null, '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d123663.7802240208!2d121.00521235619892!3d14.398712761445111!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397d84a2a0df93b%3A0xc57e16235a2709d!2sMetrobank!5e0!3m2!1sen!2sph!4v1507129200616', '', 'CLINIC', '1', '', '', '', 'HospitalAndClinic');
INSERT INTO `clinic` VALUES ('26', 'SSMC SATELLITE CLINIC-BACLARAN By the SSMC Health Group ', '2017-10-04 15:02:05', '2017-10-04 15:02:05', '<p>3993 G/F Crosswinds Hotel, Airport Road corner L. Gabriel Street Baclaran, Paranaque City</p>\n\n<p>OPEN : 9AM-6PM ( INDUSTRIAL &amp;OUT-PATIENT SERVICES)</p>\n\n<p>CONTACT Nos.: (632) 8059318</p>\n\n<p>Contact Person: Ms.Au Belmonte</p>\n\n<p>BIR VAT Reg.TIN :139-280-600-004</p>\n\n<p>Coordinator/Owner: Erlinda C.Rabe,M.D.</p>\n', null, '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3862.254867546469!2d120.99233611530649!3d14.527408882759763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c9531e2a00dd%3A0xf67bac1ed42c90f0!2sCrosswinds+Ocean+Hotel!5e0!3m2!1sen!2sph!4v1507129309827', '', 'CLINIC', '1', '', '', '', 'HospitalAndClinic');
INSERT INTO `clinic` VALUES ('27', 'SSMC SATELLITE HOSPITAL-ROSARIO BRANCH(CLINIC) ', '2017-10-04 15:04:26', '2017-10-04 15:04:26', '<p>2nd Flr,Andico Bldg, Gen.Trias Drive, Rosario, Cavite</p>\n\n<p>CONTACT NOS: 046-484 44 28 / 632 775 72 72</p>\n\n<p>OPEN: 24hours ( INDUSTRIAL/OUT PATIENT SERVICES) Laboratory&amp; Xray open up to 10pm</p>\n\n<p>Contact Person: Mr. Benny Villacorte /Ms. Ghay Amoranto-OIC</p>\n\n<p>BIR VAT Reg.TIN: 139-280-600-002</p>\n\n<p>Coordinator/Owner: Erlinda C.Rabe,M.D.</p>\n', null, '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3864.541608638357!2d120.86098931530582!3d14.395912985918295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33962c929349031d%3A0xd69ebe18b263c81!2sLBC+Express!5e0!3m2!1sen!2sph!4v1507129442313', '', 'CLINIC', '1', '', '', '', 'HospitalAndClinic');
INSERT INTO `clinic` VALUES ('28', 'SSMC SATELLITE MEDICAL & INDUSTRIAL CLINIC-CALAMBA', '2017-10-04 15:06:19', '2017-10-04 15:06:19', '<p>2ND Floor,J.Alcasid Commercial Center. Crossing Calamba,Laguna City</p>\n\n<p>OPEN: 9AM-6PM (OUT-PATIENT/INDUSTRIAL SERVICES)</p>\n\n<p>Contact: 049 502 20 11</p>\n\n<p>Contact Person : Ms.Myra Lusterio;Ms.Myrna Geneta-OIC</p>\n\n<p>BIR VAT Reg.TIN : 139-280-600-006</p>\n\n<p>Coordinator/Owner: Erlinda Cruz-Rabe,M.D.</p>\n', null, '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3867.8210145670487!2d121.15329031530449!3d14.20525619044964!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd63cf19b3a873%3A0x940e0215279f1c47!2sJ.+Alcasid+Business+Center!5e0!3m2!1sen!2sph!4v1507129562458', '', 'CLINIC', '1', '', '', '', 'HospitalAndClinic');
INSERT INTO `clinic` VALUES ('29', 'SSMC GROUP OF HOSPITALS AND CLINCS, INC-SYCAMORE', '2017-10-04 15:08:43', '2017-10-04 15:08:43', '<p>3rd Floor, Sycamore Centre,Buencamino St.cor Alabang-Zapote Rd., (in front of Honda Cars-Alabang) Cupang,Muntinlupa City</p>\n\n<p>OPEN: 9AM-6PM (OUT-PATIENT/INDUSTRIAL SERVICES)</p>\n\n<p>Contact: 8875437</p>\n\n<p>Contact Person : Ms.Clemencia Villapa-OIC/Marketing</p>\n\n<p>BIR VAT Reg.TIN : 008-100-146-001</p>\n\n<p>Coordinator: Erlinda Cruz-Rabe,M.D.</p>\n\n<p>Owners: SSMC Group of Hospitals and Clinics,Inc.</p>\n', null, '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3863.9826845012417!2d121.02037521088532!3d14.428161451418314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397d1cff73392a5%3A0xa80f4cea5ceb575c!2sSycamore+Center!5e0!3m2!1sen!2sph!4v1507129705276', '', 'CLINIC', '1', '', '', '', 'HospitalAndClinic');
INSERT INTO `clinic` VALUES ('30', 'Blue Cross Health Care, Inc. (BLUECROSS)', '2017-12-15 08:30:29', '2017-12-15 08:30:29', '<p>8000 Blue Cross Central Bldg. Makati Avenue corner P. Burgos St.&nbsp;<br />\nMakati City&nbsp;<br />\nPhone : +63.2.899.8001<br />\nFax : +63.2.899.5392<br />\nEmail :&nbsp;<a href=\"mailto:Marketing@bluecross.com.ph\">Marketing@bluecross.com.ph</a>&nbsp;<br />\nWebsite:&nbsp;<a href=\"http://www.bluecross.com.ph/\">http://www.bluecross.com.ph</a>&nbsp;&nbsp;&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('31', 'United Coconut Planters Life Assurance Corporation (COCOLIFE)', '2017-12-15 00:39:02', '2017-12-15 00:39:02', '<p>Cocolife Bldg. 6774, Ayala Avenue, Makati City&nbsp;<br />\nPhone : +63.2.812.9015 to 26 / +63.2.810.7888&nbsp;<br />\nFax : +63.2.812.9039&nbsp;<br />\nEmail :&nbsp;<a href=\"mailto:customer_service@cocolife.com\">customer_service@cocolife.com</a>&nbsp;&nbsp;<br />\nWebsite: <a href=\"http://www.cocolife.com/\">http://www.cocolife.com&nbsp;</a></p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('32', 'Health Maintenance, Inc. (HMI)', '2017-12-15 00:40:16', '2017-12-15 00:40:16', '<p>Tower Ground, Makati Cinema Square Don Chino Roces Avenue 1231,&nbsp;<br />\nMakati City&nbsp;<br />\nPhone : +63.2.811.1313<br />\nFax : +63.2.817.1377&nbsp;<br />\nEmail :&nbsp;<a href=\"mailto:marketing@hmi.com.ph\">marketing@hmi.com.ph</a>&nbsp;&nbsp;<br />\nWebsite:<a href=\"http://www.hmi.com.ph/\"> http://www.hmi.com.ph&nbsp;</a>&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('33', 'I-Care Insular Life Health Care, Inc.', '2017-12-15 00:41:07', '2017-12-15 00:41:07', '<p>2/F, I Care Bldg Dela Rosa cor Legaspi Sts Legaspi Vill, Makati City&nbsp;<br />\nPhone : +63.2.813.0131&nbsp;<br />\nEmail :&nbsp;<a href=\"mailto:info@ilmalate.com\">info@ilmalate.com</a>&nbsp;&nbsp;<br />\nWebsite: <a href=\"http://www.freewebs.com/icare\">http://www.freewebs.com/icare</a>&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('34', 'INTELLICARE / ASALUS ( formerly PRYCECARE)', '2017-12-15 00:43:10', '2017-12-15 00:43:10', '<p>7/F Feliza Building V.A. Rufino St. (formerly Hererra St.)&nbsp;<br />\nLegaspi Village, Makati City&nbsp;<br />\nPhone : +63.2.894.3386&nbsp;<br />\nEmail :&nbsp;<a href=\"mailto:marketing@intellicare.com.ph\">marketing@intellicare.com.ph</a>&nbsp;&nbsp;<br />\nWebsite: <a href=\"http://www.intellicare.com.ph/\">http://www.intellicare.com.ph</a>&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('35', 'Maxicare Healthcare Corporation (MAXICARE)', '2017-12-15 00:44:08', '2017-12-15 00:44:08', '<p>Maxicare PCIB Cigna Healthcare Corp&nbsp;<br />\n19/F Medical Plaza Bldg. Dela Rosa cor Amorsolo St, Makati City&nbsp;<br />\nPhone : +63.2.812.0561&nbsp;<br />\nWebsite: <a href=\"http://www.maxicare.com.ph/\">http://www.maxicare.com.ph&nbsp;</a></p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('36', 'Medical Services Marketing and Development Corporation (MEDSERV)', '2017-12-15 00:44:34', '2017-12-15 00:44:34', '<p>Penthouse, Seven East Capitol Bldg.&nbsp;<br />\nEast Capitol Drive, Kapitolyo, 1603 Pasig City&nbsp;<br />\nPhone : +63.2.633.5000 / +63.2.746.5000&nbsp;<br />\nFax : +63.2.632.0651&nbsp;<br />\nWebsite: <a href=\"http://www.medserv.com.ph/\">http://www.medserv.com.ph</a>&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('37', 'Medicard Philipines, Inc. (MEDICARD)', '2017-12-15 00:46:44', '2017-12-15 00:46:44', '<p>9/F, Sagittarius Bldg, HV Dela Costa St.&nbsp;<br />\nSalcedo Village, Makati City&nbsp;<br />\nPhone : +63.2.884.9999&nbsp;<br />\nFax : +63.2.810.3855&nbsp;<br />\nEmail :&nbsp;<a href=\"mailto:inquiry@medicardphils.com\">inquiry@medicardphils.com</a>&nbsp;&nbsp;<br />\nWebsite: <a href=\"http://www.medicardphils.com/\">http://www.medicardphils.com</a></p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('38', 'Philamcare Health Systems, Inc. (PHILAMCARE)', '2017-12-15 00:47:53', '2017-12-15 00:47:53', '<p>7/F Philam Life Bldg, Uited Nations Ave., Ermita, Manila&nbsp;<br />\nPhone : +63.2.526.0551&nbsp;<br />\nEmail :&nbsp;<a href=\"mailto:PHILAMCARE.HRADMIN@AIG.com\">PHILAMCARE.HRADMIN@AIG.com</a>&nbsp;&nbsp;<br />\nWebsite: <a href=\"http://www.philamlife.com.ph/philamcare/html/prod/prod.html\">http://www.philamlife.com.ph/philamcare/html/prod/prod.html</a>&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('39', 'Saint Patrick\'s Health Care Systems, Inc. (SPCARE)', '2017-12-15 00:49:42', '2017-12-15 00:49:42', '<p>891 Samat St, Mandaluyong City&nbsp;<br />\nPhone : +63.2.533.9741 to 46&nbsp;<br />\nFax : +63.2.535.4879 or 533.9746&nbsp;<br />\nEmail :&nbsp;<a href=\"mailto:tacsgroup@tacs-solutions.com\">tacsgroup@tacs-solutions.com</a>&nbsp;&nbsp;<br />\nWebsite: <a href=\"http://www.spcare-ph.com/\">http://www.spcare-ph.com</a>&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('40', 'Valuecare Health Systems, Inc. (VALUCARE)', '2017-12-15 00:50:31', '2017-12-15 00:50:31', '<p>Unit 607-613 6th Flr, East Tower&nbsp;<br />\nPhilippine Stock Exchange Center Exchange Road&nbsp;<br />\nOrtigas Center, Pasig City&nbsp;<br />\nPhone : +63.2.702.3310 / +63.2.702.3388 / 0917-wecare&nbsp;<br />\nFax : +63.2.637.9456&nbsp;<br />\nEmail :&nbsp;<a href=\"mailto:wecare@valucare.com.ph\">wecare@valucare.com.ph</a>&nbsp;&nbsp;<br />\nWebsite: <a href=\"http://www.valucare.com.ph/\">http://www.valucare.com.ph</a></p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('41', 'PRUDENTIAL Life Healthcare', '2017-12-15 00:51:18', '2017-12-15 00:51:18', '<p>PLPI Financials and Insurance Brokers, Inc.&nbsp;<br />\n2F Luz Bldg, 116 Gamboa St., Legaspi Village&nbsp;<br />\nMakati City 1229 Philippines&nbsp;<br />\nPhone : +63.2.813.1398 / +63.2.813.7074&nbsp;<br />\nFax : +63.2.813.5410&nbsp;<br />\nEmail :&nbsp;<a href=\"mailto:pfibi@prudentialife.com\">pfibi@prudentialife.com</a>&nbsp;&nbsp;<br />\nWebsite: <a href=\"http://www2.prudentialife.com/pfibi/index.html\">http://www2.prudentialife.com/pfibi/index.html</a>&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('42', 'Fortune Care', '2017-12-15 00:51:58', '2017-12-15 00:51:58', '<p>3/F Citystate Centre 709 Shaw Boulevard, Pasig City&nbsp;<br />\nPhilppines 1600&nbsp;<br />\nPhone : +63.2.637.0872 / Toll Free: 1-800-10-633-8888&nbsp;<br />\nFax : +63.2.633.6961&nbsp;<br />\nWebsite: <a href=\"http://www.fcarehmo.com.ph/\">http://www.fcarehmo.com.ph</a>&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('43', 'e-Medical and Technical Solutions, Inc.', '2017-12-15 00:52:50', '2017-12-15 00:52:50', '<p>24th Floor, Trafalgar Plaza 105 H.V dela Costa St.,Salcedo Village,&nbsp;<br />\nMakati City, 1227 Philippines&nbsp;<br />\nPhone : +63.2.751.0000&nbsp;<br />\nFAX : +63.2.751.0008&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');
INSERT INTO `clinic` VALUES ('44', 'Assistance Alliance International, Inc.', '2017-12-15 00:53:22', '2017-12-15 00:53:22', '<p>24th Floor, Trafalgar Plaza 105 H.V dela Costa St.,&nbsp;<br />\nSalcedo Village, Makati City 1227 Philippines&nbsp;<br />\nPhone : +63.2.813.8080&nbsp;<br />\nFAX : +63.2.831.8081&nbsp;</p>\n', null, '', '', '', 'CLINIC', null, '', '', '', 'HMO');

-- ----------------------------
-- Table structure for cliniccontact
-- ----------------------------
DROP TABLE IF EXISTS `cliniccontact`;
CREATE TABLE `cliniccontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `clinicid` int(11) NOT NULL,
  `dateadded` timestamp NULL DEFAULT NULL,
  `dateupdated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinicid` (`clinicid`),
  CONSTRAINT `clinicid` FOREIGN KEY (`clinicid`) REFERENCES `clinic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cliniccontact
-- ----------------------------
INSERT INTO `cliniccontact` VALUES ('1', 'M', '(+63)9475537192', '1', '2017-07-15 17:04:16', '2017-07-15 17:04:18');
INSERT INTO `cliniccontact` VALUES ('2', 'P', '789-4556', '1', '2017-07-15 17:04:16', '2017-07-15 17:04:16');
INSERT INTO `cliniccontact` VALUES ('3', 'E', 'rsillador@gmail.com', '1', '2017-07-15 17:04:16', '2017-07-15 17:04:16');

-- ----------------------------
-- Table structure for contactus
-- ----------------------------
DROP TABLE IF EXISTS `contactus`;
CREATE TABLE `contactus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(125) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `subject` varchar(75) NOT NULL DEFAULT '',
  `status` varchar(25) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contactus
-- ----------------------------
INSERT INTO `contactus` VALUES ('1', '2017-10-28 03:16:31', 'Tes@gmail.com', 'Test', 'Type of Inquiry', null, null);
INSERT INTO `contactus` VALUES ('2', '2017-10-28 03:16:33', 'Tes@gmail.com', 'Test', 'Type of Inquiry', null, null);
INSERT INTO `contactus` VALUES ('3', '2017-10-28 03:16:44', 'Tes@gmail.com', 'Test', 'Type of Inquiry', null, null);
INSERT INTO `contactus` VALUES ('4', '2018-01-23 00:44:27', 'mac.caliwara@gmail.com', 'Hello! ', 'Inquiry', 'READ', '18');
INSERT INTO `contactus` VALUES ('5', '2018-07-17 05:40:14', 'nathandelapiedra@gmail.com', 'hi', 'Inquiry', 'DELETED', '18');

-- ----------------------------
-- Table structure for contactusreply
-- ----------------------------
DROP TABLE IF EXISTS `contactusreply`;
CREATE TABLE `contactusreply` (
  `id` int(11) NOT NULL,
  `contactusid` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `message` varchar(255) NOT NULL,
  `repliedby` int(11) NOT NULL,
  `datereplied` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contactusreply
-- ----------------------------

-- ----------------------------
-- Table structure for contact_information
-- ----------------------------
DROP TABLE IF EXISTS `contact_information`;
CREATE TABLE `contact_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `value` varchar(75) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact_information
-- ----------------------------
INSERT INTO `contact_information` VALUES ('1', 'hospital-contact', '+63214693143 | 816-0205 | Romlord', '2017-12-04 00:27:59');
INSERT INTO `contact_information` VALUES ('2', 'clinic-contact', '+63214693143 | 816-0205 | Clemencia Villapa', '2017-12-04 00:27:59');
INSERT INTO `contact_information` VALUES ('3', 'email', 'info@ssmchealth.com', '2017-12-04 00:27:59');
INSERT INTO `contact_information` VALUES ('4', 'facebook', 'https://facebook.com/ssmchealth', '2017-12-04 00:27:59');
INSERT INTO `contact_information` VALUES ('5', 'twitter', 'https://twitter.com/ssmchealth', '2017-12-04 00:27:59');
INSERT INTO `contact_information` VALUES ('6', 'youtube', 'https://youtube.com/ssmchealth', '2017-12-04 00:27:59');
INSERT INTO `contact_information` VALUES ('7', 'address', 'Km 17 West Service Road,Barangay Marcelo Green Village Parañaque City', '2017-12-04 00:27:59');
INSERT INTO `contact_information` VALUES ('8', 'motto', 'welcome', '2017-12-04 00:27:59');

-- ----------------------------
-- Table structure for control
-- ----------------------------
DROP TABLE IF EXISTS `control`;
CREATE TABLE `control` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(10) unsigned NOT NULL DEFAULT '0',
  `moduleid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of control
-- ----------------------------
INSERT INTO `control` VALUES ('11', '8', '0', '0');
INSERT INTO `control` VALUES ('12', '8', '0', '0');
INSERT INTO `control` VALUES ('13', '9', '0', '0');
INSERT INTO `control` VALUES ('14', '9', '0', '0');
INSERT INTO `control` VALUES ('15', '9', '0', '0');
INSERT INTO `control` VALUES ('16', '9', '0', '0');
INSERT INTO `control` VALUES ('17', '7', '0', '0');
INSERT INTO `control` VALUES ('18', '7', '0', '0');
INSERT INTO `control` VALUES ('19', '9', '0', '0');
INSERT INTO `control` VALUES ('20', '8', '0', '0');
INSERT INTO `control` VALUES ('21', '7', '0', '0');
INSERT INTO `control` VALUES ('22', '9', '0', '0');
INSERT INTO `control` VALUES ('23', '3', '1', '18');
INSERT INTO `control` VALUES ('24', '8', '0', '0');
INSERT INTO `control` VALUES ('25', '8', '0', '0');
INSERT INTO `control` VALUES ('26', '8', '0', '0');
INSERT INTO `control` VALUES ('27', '8', '0', '0');
INSERT INTO `control` VALUES ('28', '8', '0', '0');
INSERT INTO `control` VALUES ('29', '8', '0', '0');
INSERT INTO `control` VALUES ('30', '8', '0', '0');
INSERT INTO `control` VALUES ('31', '8', '0', '0');
INSERT INTO `control` VALUES ('32', '8', '0', '0');
INSERT INTO `control` VALUES ('33', '8', '0', '0');
INSERT INTO `control` VALUES ('34', '8', '0', '0');
INSERT INTO `control` VALUES ('35', '8', '0', '0');
INSERT INTO `control` VALUES ('36', '9', '0', '0');
INSERT INTO `control` VALUES ('37', '9', '0', '0');
INSERT INTO `control` VALUES ('38', '9', '0', '0');
INSERT INTO `control` VALUES ('39', '9', '0', '0');
INSERT INTO `control` VALUES ('40', '9', '0', '0');
INSERT INTO `control` VALUES ('41', '9', '0', '0');
INSERT INTO `control` VALUES ('42', '9', '0', '0');
INSERT INTO `control` VALUES ('43', '9', '0', '0');
INSERT INTO `control` VALUES ('44', '9', '0', '0');
INSERT INTO `control` VALUES ('45', '9', '0', '0');
INSERT INTO `control` VALUES ('46', '9', '0', '0');
INSERT INTO `control` VALUES ('47', '9', '0', '0');
INSERT INTO `control` VALUES ('48', '9', '0', '0');
INSERT INTO `control` VALUES ('49', '7', '0', '0');
INSERT INTO `control` VALUES ('50', '7', '0', '0');
INSERT INTO `control` VALUES ('51', '8', '0', '0');
INSERT INTO `control` VALUES ('52', '8', '0', '0');
INSERT INTO `control` VALUES ('53', '9', '0', '0');
INSERT INTO `control` VALUES ('54', '9', '0', '0');
INSERT INTO `control` VALUES ('55', '9', '0', '0');
INSERT INTO `control` VALUES ('56', '9', '0', '0');
INSERT INTO `control` VALUES ('57', '9', '0', '0');
INSERT INTO `control` VALUES ('58', '9', '0', '0');
INSERT INTO `control` VALUES ('59', '9', '0', '0');
INSERT INTO `control` VALUES ('60', '9', '0', '0');
INSERT INTO `control` VALUES ('61', '9', '0', '0');
INSERT INTO `control` VALUES ('62', '9', '0', '0');
INSERT INTO `control` VALUES ('63', '9', '0', '0');
INSERT INTO `control` VALUES ('64', '9', '0', '0');
INSERT INTO `control` VALUES ('65', '9', '0', '0');
INSERT INTO `control` VALUES ('66', '9', '0', '0');

-- ----------------------------
-- Table structure for directory
-- ----------------------------
DROP TABLE IF EXISTS `directory`;
CREATE TABLE `directory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of directory
-- ----------------------------
INSERT INTO `directory` VALUES ('1', 'Obstetricians / Gynecologists', '1');
INSERT INTO `directory` VALUES ('2', 'Internal Medicine', '1');
INSERT INTO `directory` VALUES ('6', 'General Surgeon', '1');
INSERT INTO `directory` VALUES ('7', 'Neuro Surgeon', '1');
INSERT INTO `directory` VALUES ('8', 'Anesthesiology', '1');
INSERT INTO `directory` VALUES ('9', 'Ortho-Surgeon', '1');
INSERT INTO `directory` VALUES ('10', 'Thora-Cardio-Vasc. Surgeon', '1');
INSERT INTO `directory` VALUES ('11', 'Urology', '1');
INSERT INTO `directory` VALUES ('12', 'EENT', '1');
INSERT INTO `directory` VALUES ('13', 'ENT', '1');
INSERT INTO `directory` VALUES ('14', 'Ophthalmologist', '1');
INSERT INTO `directory` VALUES ('15', 'Psychiatrist', '1');
INSERT INTO `directory` VALUES ('16', 'Radiologist', '1');
INSERT INTO `directory` VALUES ('17', 'Pathologist', '1');
INSERT INTO `directory` VALUES ('18', 'Medico-Legal', '1');
INSERT INTO `directory` VALUES ('19', 'Pediatrician', '1');
INSERT INTO `directory` VALUES ('20', 'Pedia-Cardio', '1');
INSERT INTO `directory` VALUES ('21', 'Resident Doctors', '1');
INSERT INTO `directory` VALUES ('22', 'Geriatric', '1');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `day` varchar(75) DEFAULT NULL,
  `time` varchar(75) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `directoryid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('2', 'Doc. Test 1', 'Monday', '10-05', '', 'Manila', '1');
INSERT INTO `doctor` VALUES ('3', 'Doc. Test 1', 'Monday', '10-05', '', 'Manila', '10');
INSERT INTO `doctor` VALUES ('4', 'Doc. Test 1', 'Monday', '10-05', '', 'Manila', '7');

-- ----------------------------
-- Table structure for examresult
-- ----------------------------
DROP TABLE IF EXISTS `examresult`;
CREATE TABLE `examresult` (
  `id` bigint(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `dateexamined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `encodedby` int(25) NOT NULL,
  `accountid` bigint(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `result` varchar(125) DEFAULT NULL,
  `resultcount` int(11) NOT NULL DEFAULT '0',
  `dateencoded` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `encodedby` (`encodedby`),
  KEY `accountid` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examresult
-- ----------------------------
INSERT INTO `examresult` VALUES ('2', 'Test Result', '2017-10-19 11:15:56', '18', '2057845', 'ACTIVE', 'Test Result Description', 'result/NrdbO3t3A3OcWyeJCzQGfQ6lC8ovr3tx.pdf', '0', '2017-10-19 11:10:55');

-- ----------------------------
-- Table structure for faq
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer` text,
  `dateadded` timestamp NULL DEFAULT NULL,
  `dateupdated` timestamp NULL DEFAULT NULL,
  `status` tinyint(10) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of faq
-- ----------------------------
INSERT INTO `faq` VALUES ('2', 'Does SSMC offer free check-up?', 'SSMC offer free check-up every monday morning.', '2017-10-04 15:35:33', '2017-10-04 15:35:33', '1', 'HOSPITALS', 'Free Check-up');

-- ----------------------------
-- Table structure for faq_temp
-- ----------------------------
DROP TABLE IF EXISTS `faq_temp`;
CREATE TABLE `faq_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(520) DEFAULT NULL,
  `answer` text,
  `dateadded` datetime DEFAULT NULL,
  `dateupdated` datetime DEFAULT NULL,
  `status` tinyint(10) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `mainid` int(11) NOT NULL,
  `author` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`) USING BTREE,
  CONSTRAINT `faq_temp_ibfk_1` FOREIGN KEY (`author`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of faq_temp
-- ----------------------------
INSERT INTO `faq_temp` VALUES ('1', '<p>Does SSMC offer free check-up?</p>\n', '<p>SSMC offer free check-up every monday morning.</p>\n', '2018-07-10 18:34:02', '2018-07-10 18:34:02', '1', 'HOSPITALS', 'Free Check-up', '2', '18');

-- ----------------------------
-- Table structure for featuredbox
-- ----------------------------
DROP TABLE IF EXISTS `featuredbox`;
CREATE TABLE `featuredbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `box` int(5) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `page` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of featuredbox
-- ----------------------------
INSERT INTO `featuredbox` VALUES ('1', 'Pre-Employment Flowchart', 'Pre-Empolyment Flowchart', '1', '2017-11-25 07:09:42', 'Medical');
INSERT INTO `featuredbox` VALUES ('2', 'Annual Physical Exam Flowchart', 'Annual Physical Exam Flowchart', '2', '2017-11-25 07:07:31', 'Medical');
INSERT INTO `featuredbox` VALUES ('3', 'Free Checkup sss', 'Hospital Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Dui', '1', '2017-10-28 21:51:03', 'Hospital');
INSERT INTO `featuredbox` VALUES ('4', 'Emergency Care', 'Hospital Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Dui', '2', '2017-10-28 21:51:09', 'Hospital');

-- ----------------------------
-- Table structure for header
-- ----------------------------
DROP TABLE IF EXISTS `header`;
CREATE TABLE `header` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateupdated` timestamp NULL DEFAULT NULL,
  `type` varchar(45) NOT NULL DEFAULT '',
  `page` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `header_unique_page_type` (`page`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of header
-- ----------------------------
INSERT INTO `header` VALUES ('1', 'Clinics Name', 'Hospital', '      ', '0', '2018-07-20 03:51:19', '2018-07-20 03:51:19', 'HOSPITALS', 'Main');
INSERT INTO `header` VALUES ('3', 'Faq services', 'Faq services', 'We are the leading brand in affordable quality healthcare', '0', '2017-12-09 03:18:46', '2017-12-09 03:18:46', 'HOSPITALS', 'Faq');
INSERT INTO `header` VALUES ('4', 'Services', 'Services', 'We offer various medical services that suits your need. ', '0', '2018-07-18 11:05:32', '2018-07-18 11:05:32', 'HOSPITALS', 'Service');
INSERT INTO `header` VALUES ('5', 'Corporate Service', 'Corporate Service', 'Partnering in diagnostic and \r\ntechnology and innovations and preventive healthcare', '0', '2017-12-09 05:03:39', '2017-12-09 05:03:39', 'HOSPITALS', 'Hospital');
INSERT INTO `header` VALUES ('8', 'Contact Us', 'Contact Us', 'Contact Us', '0', '2017-10-16 17:12:17', '2017-10-04 23:50:02', 'HOSPITALS', 'ContactUs');
INSERT INTO `header` VALUES ('9', 'Clinics', 'Clinics Header', 'The SSMCHealth is the leading brand in affordable quality healthcare.', '0', '2017-12-09 04:59:36', '2017-12-09 04:59:36', 'CLINIC', 'Medical');
INSERT INTO `header` VALUES ('10', 'About Us', 'About Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget molestie augue, ut suscipit nibh. ', '0', '2018-07-07 15:44:16', '2018-07-07 15:44:16', 'HOSPITALS', 'About');
INSERT INTO `header` VALUES ('11', 'Services', 'Services', '    \r\n', '0', '2018-07-18 13:09:32', '2018-07-18 13:09:32', 'CLINIC', 'Service');
INSERT INTO `header` VALUES ('12', 'Contact Us', 'Contact Us', '    ', '0', '2018-07-18 13:10:35', '2018-07-18 13:10:35', 'CLINIC', 'ContactUs');
INSERT INTO `header` VALUES ('13', 'About Us', 'About us', '    ', '0', '2018-07-18 13:08:23', '2018-07-18 13:08:23', 'CLINIC', 'About');
INSERT INTO `header` VALUES ('16', 'FAQ ', 'FAQ', '      ', '0', '2018-07-18 13:10:00', '2018-07-18 13:10:00', 'CLINIC', 'Faq');
INSERT INTO `header` VALUES ('17', 'Industrial', 'Industrial', '    ', '0', '2018-07-18 13:10:51', '2018-07-18 13:10:51', 'CLINIC', 'Industrial');
INSERT INTO `header` VALUES ('18', 'Careers', 'Careers', 'Test Careers', '0', '2018-07-18 14:24:43', '2018-07-18 14:24:43', 'HOSPITALS', 'Careers');
INSERT INTO `header` VALUES ('20', 'Careers', 'Careers', '    ', '0', '2018-07-20 04:13:43', '2018-07-20 04:13:43', 'CLINIC', 'Careers');
INSERT INTO `header` VALUES ('21', 'Hospital and Clinics', 'Hospital and Clinics', '   ', '0', '2018-07-20 04:15:24', '2018-07-20 04:15:24', 'CLINIC', 'HospitalAndClinic');
INSERT INTO `header` VALUES ('27', 'Hospitals and Clinics', 'Hospitals and Clinics', 'test', '0', '2018-07-21 16:33:55', '2018-07-21 16:33:53', 'HOSPITALS', 'HospitalAndClinic');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '5xy7A1G6Ss5QPxX6ZNOZabAo1OHV6Qyr.jpg', '2017-10-12 15:48:52');
INSERT INTO `image` VALUES ('2', 'QR6enf1QEKl9vvnN9GCA0FjQenonBERd.jpg', '2017-10-12 15:51:12');
INSERT INTO `image` VALUES ('3', '0CKSD7EXL75DcQLWcmHaadgxuEZm7he2.jpg', '2017-10-12 15:55:04');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `serviceid` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', 'upload/jYE8RZqSwMiQdyOIxeALs15MHQTCnAuL.jpg', '1', '5', 'HEADER');
INSERT INTO `images` VALUES ('12', 'upload/cLiSVYMT8Ry5AktRvZ8Wg4BrlS5H285j.jpg', '1', '2', 'SERVICE');
INSERT INTO `images` VALUES ('13', 'upload/RH0OPvvcRUktZqpEwFxeNFAjCXqAaFD9.jpg', '1', '1', 'SERVICE');
INSERT INTO `images` VALUES ('14', 'upload/FCX3yUESCP4C4LiqoqAimAWQEijlziXV.jpg', '1', '3', 'SERVICE');
INSERT INTO `images` VALUES ('16', 'upload/xTHc2Oiqgo8kAxG8CFT7f4XLNO9B7Hdw.jpg', '1', '2', 'ABOUTUS');
INSERT INTO `images` VALUES ('17', 'upload/7ge0RtkF88CfoOjARdEZhf5n27Lh4JxM.jpg', '1', '4', 'SERVICE');
INSERT INTO `images` VALUES ('18', 'upload/XapJBPKeCYpmRagXVwctiPPywJTkIXpH.jpg', '1', '5', 'SERVICE');
INSERT INTO `images` VALUES ('20', 'upload/WMsY70z128djQyvVLNFCT1UohrQR8ZMW.jpg', '1', '1', 'CLINIC');
INSERT INTO `images` VALUES ('21', 'upload/JUG7nh40o257GZby7ilBJZ2YiGYlTJDd.png', '1', '2', 'CLINIC');
INSERT INTO `images` VALUES ('22', 'upload/HznFSTewktcATbMHZxJQqrPQcUbBbOW0.jpg', '1', '23', 'CLINIC');
INSERT INTO `images` VALUES ('23', 'upload/oCWkwuwRO3E34cte4RROztPzIHWPDNAm.jpg', '1', '24', 'CLINIC');
INSERT INTO `images` VALUES ('24', 'upload/U7ey2yqaReSvy1xdteibULmrV4cdOHie.jpg', '1', '25', 'CLINIC');
INSERT INTO `images` VALUES ('25', 'upload/ITPJ6AMEw8QuoZiNCCtgK2NyXMjXuQ4A.jpg', '1', '26', 'CLINIC');
INSERT INTO `images` VALUES ('26', 'upload/jLHhO4KhUwtJWX9RAaD0dT1SmYEQRrNq.jpg', '1', '27', 'CLINIC');
INSERT INTO `images` VALUES ('27', 'upload/sVb4F0li0gtEK4L1ZVuYGe7AcTeRHbzX.jpg', '1', '28', 'CLINIC');
INSERT INTO `images` VALUES ('28', 'upload/QwYqCaQme9328FZEHRHUNHoXmo0vnYO8.jpg', '1', '29', 'CLINIC');
INSERT INTO `images` VALUES ('30', 'upload/nOCPcrI2S757el2ov4QBIFj99Jm7KB44.jpg', '1', '7', 'SERVICE');
INSERT INTO `images` VALUES ('40', 'upload/AuD3RjNq6XE2cYckLlTHeCsY2QUVfPpN.jpg', '1', '8', 'HEADER');
INSERT INTO `images` VALUES ('56', 'upload/dCsVvsrDOVphWOeClrAjyLBm3RPCjl6S.png', '1', '21', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('63', 'upload/NvUCBMJyhwDNC8fjcVP6wl1Qng3mDYM0.jpg', '1', '11', 'SERVICE');
INSERT INTO `images` VALUES ('66', 'upload/I5adFRz24PABPLVSjgIvRzBDeu123LA1.jpg', '0', '1', 'FEATUREDBOX');
INSERT INTO `images` VALUES ('76', 'upload/3o9ZIWNWI2kD4h3NcDiqgymI8rZwkVWP.jpg', '0', '1', 'ABOUTUS');
INSERT INTO `images` VALUES ('78', 'upload/APSZTY3kumdUY3BI2MOXlQ87jyDJytQq.png', '1', '30', 'CLINIC');
INSERT INTO `images` VALUES ('79', 'upload/n0EfQUb0udpNcmkzpg3b8LHRIrRvxnZu.png', '1', '31', 'CLINIC');
INSERT INTO `images` VALUES ('80', 'upload/VxEEmFNfL4jQjxXw13WyDk8xofm0t1L5.png', '1', '32', 'CLINIC');
INSERT INTO `images` VALUES ('81', 'upload/ah84ZWLpdv5MNRvjJDadz5ztZAdHV56A.png', '1', '33', 'CLINIC');
INSERT INTO `images` VALUES ('82', 'upload/M4Vcf1OUluY4BIpJP1GcAoNFoCZtqM4B.png', '1', '34', 'CLINIC');
INSERT INTO `images` VALUES ('83', 'upload/jcIWzyw3pN48z0kmTHVplSrlS1Ml0wpY.png', '1', '35', 'CLINIC');
INSERT INTO `images` VALUES ('84', 'upload/C91X85yUmOWNPsaVfgnkP3zyTWkB6vLc.png', '1', '36', 'CLINIC');
INSERT INTO `images` VALUES ('85', 'upload/wP4j5ci6iSdVFmqeDeoKMNMOLE1l6MoY.png', '1', '38', 'CLINIC');
INSERT INTO `images` VALUES ('86', 'upload/cTeJ3mmic2V6LApumfJDhPToMLH1GrFv.png', '1', '37', 'CLINIC');
INSERT INTO `images` VALUES ('87', 'upload/1bNpF79LjBD0XmzkdhTouzB8bRwDEYzO.png', '1', '39', 'CLINIC');
INSERT INTO `images` VALUES ('88', 'upload/wzWaHX31CJktHpwrMFS6SOP1gkcDvgMJ.png', '1', '40', 'CLINIC');
INSERT INTO `images` VALUES ('89', 'upload/uwUj6iXyp3XrlPPLYBbB5qWWGtWV8iQS.png', '1', '41', 'CLINIC');
INSERT INTO `images` VALUES ('90', 'upload/EYyYIMnTuZcGZOlD8AjUjkvUD9mjTcq9.png', '1', '42', 'CLINIC');
INSERT INTO `images` VALUES ('91', 'upload/IZnj60HnE8q0V67hfz8clwLpfNkmkfPl.png', '1', '43', 'CLINIC');
INSERT INTO `images` VALUES ('92', 'upload/UnvDUoZYJgaYjfIUN5OCMyo30VWxfpWX.png', '1', '44', 'CLINIC');
INSERT INTO `images` VALUES ('97', 'upload/UoQVdmbjSCEznZ4Ca9yi2vKW9oZBKspk.jpg', '0', '10', 'HEADER');
INSERT INTO `images` VALUES ('98', 'upload/t4GM2NzJKbsLSV3ixSoII7tX0uVGk0du.jpg', '1', '4', 'HEADER');
INSERT INTO `images` VALUES ('100', 'upload/XO9LhQ3uYTwqbIiruYTCL8jxIcM6t0eR.jpg', '1', '6', 'ABOUTUS');
INSERT INTO `images` VALUES ('101', 'upload/K1yIUxmHM2W8qpeKFGVDINUs2fnscaHv.jpg', '1', '3', 'ABOUTUS');
INSERT INTO `images` VALUES ('102', 'upload/fjY4KWaSf0oEcHMYK3mtNzmXuTBbE6lG.jpg', '1', '19', 'SERVICE');
INSERT INTO `images` VALUES ('103', 'upload/OuJJbGh6SMepHqFJ4w1otVptI6rud7n6.jpg', '1', '12', 'SERVICE');
INSERT INTO `images` VALUES ('107', 'upload/NhT4FHoEtu5o1LXAHNGFVLBLlWSkf0OM.jpg', '1', '18', 'SERVICE');
INSERT INTO `images` VALUES ('123', 'upload/hTDnGp0hPkyLCYP69TSiH2O7KPfInpyT.jpg', '0', '10', 'HEADER');
INSERT INTO `images` VALUES ('125', 'upload/2Cds5yi4As1Gok9dpQFQk6X8YY3sTzfm.jpg', '0', '13', 'SERVICE');
INSERT INTO `images` VALUES ('128', 'upload/c4qpc9TnGx4MGeBm5Y49DvY04Ke4e0oY.jpg', '1', '13', 'SERVICE');
INSERT INTO `images` VALUES ('129', 'upload/ZjmwrJFyftiuufSEa0haH4wNvSjcDw8g.jpg', '1', '10', 'SERVICE');
INSERT INTO `images` VALUES ('133', 'upload/wLMxZfGOEPc9PAJBKvMeEukw4MO99dJh.jpg', '0', '6', 'SERVICE');
INSERT INTO `images` VALUES ('134', 'upload/ll5Vr0n0BFIB3QeXEpzf9yva5qAdB50z.jpg', '0', '6', 'SERVICE');
INSERT INTO `images` VALUES ('135', 'upload/qUYcdWrc33NEPRJRfej2jRnwpk3mzhJ3.jpg', '1', '11', 'SERVICE');
INSERT INTO `images` VALUES ('136', 'upload/CqpVm3rvPm0yCjQUuStHr2YKz1Kmb7BY.png', '1', '11', 'SERVICE');
INSERT INTO `images` VALUES ('152', 'upload/aAw0tcJJqMpo7ZwAoKZ5SBz0Y9HSdAif.jpg', '1', '9', 'HEADER');
INSERT INTO `images` VALUES ('179', 'upload/kB5RjK5xmGYhk7ByK37EIoYq83BGPVFn.jpg', '1', '14', 'HEADER');
INSERT INTO `images` VALUES ('182', 'upload/0DDNjktvHIs4fJpoSXIBSGFmfioQAolj.jpg', '1', '12', 'HEADER');
INSERT INTO `images` VALUES ('183', 'upload/aF8NYdQwkb7GiJZSqVuIFaZdUz9E7Mwh.jpg', '1', '13', 'HEADER');
INSERT INTO `images` VALUES ('184', 'upload/0BfJGHUi7s86mEAvTCkq2VfKrOddXvG0.jpg', '1', '6', 'SERVICE');
INSERT INTO `images` VALUES ('185', 'upload/0SQQCswulItdIIND0xETuiJDpNGLyMoB.jpg', '1', '6', 'SERVICE');
INSERT INTO `images` VALUES ('186', 'upload/c9lDghddJpVusbxIUo7nkD2vEgOoFJ8X.jpg', '1', '6', 'SERVICE');
INSERT INTO `images` VALUES ('187', 'upload/GPbv7KFcOodEuw93mcI6KG3p36qaIRdW.jpg', '1', '6', 'SERVICE');
INSERT INTO `images` VALUES ('188', 'upload/SPDsDE3JZX0WeNsZ8j9kJW1vDbJjD99p.jpg', '1', '6', 'SERVICE');
INSERT INTO `images` VALUES ('189', 'upload/FcTpnasBG1G6AFMouxEXW02CnGcsQwVM.jpg', '1', '6', 'SERVICE');
INSERT INTO `images` VALUES ('190', 'upload/D7NdCXrqpyeEfxy3QGxfPWZsQxagbQko.jpg', '1', '19', 'HEADER');
INSERT INTO `images` VALUES ('199', 'upload/yCRsZPw7vFT4DX0a6Seonya3mfL4nf4P.jpg', '1', '11', 'HEADER');
INSERT INTO `images` VALUES ('208', 'upload/COMbS3pe2aVWeDgoVVvJtPXW8ORLfT5q.jpg', '1', '3', 'HEADER');
INSERT INTO `images` VALUES ('210', 'upload/UVehkcnfKpgcT7GMOW7JVvRnCLL56LQG.jpg', '1', '16', 'HEADER');
INSERT INTO `images` VALUES ('211', 'upload/ZJsvOBshcHb4vIUYd8OXkDTzMCzCzZlX.jpg', '1', '17', 'HEADER');
INSERT INTO `images` VALUES ('212', 'upload/kf0scZfiBUNolWc5WuQ4Ky13BWeBOspk.jpg', '1', '22', 'HEADER');
INSERT INTO `images` VALUES ('214', 'upload/1cRv5M0AvPQjLGt5TGPhMdC2u0UepVkx.jpg', '1', '2', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('215', 'upload/vJpspm3FaCMjzeiPIPK3VRDgz4fkWHnZ.jpg', '1', '1', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('221', 'upload/M3Mq7JhM4MxwTU7VN5LTuYXclTdyLHjg.jpg', '1', '2', 'FEATUREDBOX');
INSERT INTO `images` VALUES ('228', 'upload/1THhEEVdR1kWDhkVsY29iTZtvpirOY7Y.jpg', '0', '21', 'HEADER');
INSERT INTO `images` VALUES ('229', 'upload/VWXXIF4nBRTPYrAsq66dbp7ZiFWQvq53.png', '1', '18', 'HEADER');
INSERT INTO `images` VALUES ('235', 'upload/COm2IRczvwKS7VEHdDTKaJWb0eXzusMI.jpg', '1', '20', 'HEADER');
INSERT INTO `images` VALUES ('236', 'upload/aH4TRPyppv7dsfHQJP1toP1vKAhLOg0P.jpg', '1', '3', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('238', 'upload/gUCeI5ZmJCWZfDVc4z8ea3AYwjOwZevS.jpg', '1', '4', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('242', 'upload/HGAM6uZDjpvPUHs1cfQY5H67F3ausyFl.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('243', 'upload/5C1VV7R9t1zPyzzvv0IqJF0w5P1053wt.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('245', 'upload/c5MDI1hPhhZWYcHSWqdeeXQr70fBSHhH.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('249', 'upload/gUmuoelUglUIDkOMfrBk5drLlj55uFi2.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('250', 'upload/nUih3FNEE1uPtNiTHynXsHjMy9fc0QCo.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('251', 'upload/D2bk6mf1CM1y31ftlZJV7gBA42KOmuco.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('252', 'upload/mtQ0YYUQLAAPqebvWSqX5JiRKNQ25fXY.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('253', 'upload/9OJvMRBD2CGihe4JM78NbIhuVwpAJgnP.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('257', 'upload/PHPJ1nuuBXDWPJiwQWxCafG9Jw0bQSOK.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('258', 'upload/wxbOZ8l3PO7iTcqjY4h73pSCgZsOVFM4.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('259', 'upload/iMsccIOX6A7pjWkKbgN1HW0ntyKsh3NA.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('260', 'upload/vNrLy2AxdodqhR5tAtWKaGa5VT67ZxXv.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('262', 'upload/s6ePEtiBijg8nyvphecqvTZisMjyrbTU.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('263', 'upload/NjT2e8CKVAwHQuEhSbiUH0ry1bxKJYJT.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('264', 'upload/yCVWCkcevP6atc1KE7WjNDld9M2gakCC.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('265', 'upload/iUCLMJCmHR8Ee6ZMtt1CB8KPw8cBO9Bz.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('268', 'upload/7KCNnPt2i4bUWk88ciOUzVZe1mL5WhLg.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('269', 'upload/dQFCSKPKLiI4zksvophfOb3NH8MANNRz.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('270', 'upload/WE4gg4juYB5fexaJpLjDBIXasr0gjYC6.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('271', 'upload/HJiXmH9JAE69OMFEMiME2d74qPxGOkGw.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('272', 'upload/nIXFpfuU789ybbR8slBsDVKku9ZeRCYl.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('273', 'upload/xc61NkPBnZ42hai1XSRMTGx8XhVTyLX9.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('274', 'upload/oUPj9MrxLIL2AGX90IXfOnmhWttJrs4O.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('275', 'upload/qWJY8omuQLCkFPKL6OXRmMDzP64UUf54.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('276', 'upload/Pyjt99GB3Xb0DKo2nGA7j0fUmpA6vv93.jpg', '1', '5', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('277', 'upload/2Tv8n4wonTDHmSJZhBXbTfgv53B6uPS6.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('278', 'upload/b1Fam60pvQOD3OvHu9U5rIV93D7rEH2t.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('279', 'upload/yH4O2TfX78kIFwqRst1lKsDzYsapWBqQ.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('280', 'upload/ToJawEUcJ1N3dd8GpVJqIgSrc40hqEAm.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('281', 'upload/WiWCUUULhMDhhVVP8CmQxaztzJ5UrwKo.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('282', 'upload/u6bBDHdE1hdjm0iqQqxVQ40tfSUcZwZN.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('283', 'upload/VOTdXXbYMqbVhcxfg1yiRjEJVRzRd9EZ.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('284', 'upload/LFSbZ8ggQ0u5zzNHZFWMTupu6lxSq1Ir.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('285', 'upload/MKuUN5XCHHVZ9LN1XVxc9wIWW0pMQZjy.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('286', 'upload/ehFLVnPZ0bKc7P1rw87fLvHaNklGUaVP.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('287', 'upload/yB8YtjVKGYbnFYhgHjY7gXLGuFc3omwN.jpg', '1', '6', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('289', 'upload/OwCzVmMRfvlzBMYlMKiRBlDuWLm9kIUE.jpg', '1', '7', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('291', 'upload/YPccAsjpqZFTODXysYNB6qlvTOlslxeH.jpg', '1', '4', 'ABOUTUS');
INSERT INTO `images` VALUES ('297', 'upload/kLDHhN5phoyBTe6ZSuJhrLY1K4qX2iaQ.jpg', '1', '27', 'HEADER');
INSERT INTO `images` VALUES ('298', 'upload/rnbXXi0CqAnUqRI9J16A55O0jlThPOcI.jpg', '1', '8', 'SERVICE');
INSERT INTO `images` VALUES ('301', 'upload/GeCROjyf6dRUR6SXYk2jxzOtVQ8UR8VX.jpg', '1', '40', 'SERVICE');
INSERT INTO `images` VALUES ('302', 'upload/KwyrDfNkGC9fUInMeUmJ768mD1grzLU1.jpg', '1', '40', 'SERVICE');
INSERT INTO `images` VALUES ('303', 'upload/Zby3o0r9OLF8qbAhRUeydWeapc4LwYJi.jpg', '1', '40', 'SERVICE');
INSERT INTO `images` VALUES ('304', 'upload/n1icmo9jLgff2tRnG7NhBiWU3q4zM4Ii.jpg', '1', '9', 'SERVICE');
INSERT INTO `images` VALUES ('305', 'upload/oBmwfYiywECIksX3uaqxRfI29r2mzotT.jpg', '1', '9', 'SERVICE');
INSERT INTO `images` VALUES ('306', 'upload/hkuLRSUSHCoXrjQTCKBjh98dBmvwGeEk.', '1', '40', 'SERVICE');
INSERT INTO `images` VALUES ('309', 'upload/j5W9MILc5jyQluSmDXZ2InCGPsfPl5RZ.jpg', '1', '8', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('310', 'upload/y5EX1goYooOVdlPHTxstVBKU2fys60KG.jpg', '1', '8', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('311', 'upload/8Yhl9vCD0zaPQcYAjMmHIi7e2S0eRYRQ.jpg', '1', '8', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('312', 'upload/m44jLwCaWP88ibDdD5O60maBYsvYUDYx.jpg', '1', '8', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('313', 'upload/PXoE7cH7OX2XB4RJPEuMb8SAKUvqB2cF.jpg', '1', '8', 'NEWSANDUPDATES');
INSERT INTO `images` VALUES ('314', 'upload/3bf7MAc1LUl3kuLPLaAgQux5CsamxBld.jpg', '1', '8', 'NEWSANDUPDATES');

-- ----------------------------
-- Table structure for news_and_update
-- ----------------------------
DROP TABLE IF EXISTS `news_and_update`;
CREATE TABLE `news_and_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `news` longtext,
  `status` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_and_update
-- ----------------------------
INSERT INTO `news_and_update` VALUES ('1', 'Wellness 101', '2018-08-03 09:02:04', '<p>hi hello</p>\n', '0');
INSERT INTO `news_and_update` VALUES ('3', 'Gaining a Foothold in Healthcare: QMS ISO 9001: 2015 ', '2018-07-20 08:06:52', '<p>( May 15&nbsp;)</p>\n\n<p>More and more healthcare institutions are joining the ranks of those who have embraced Quality Management System in its operation. The ISO 9001:2015 is the more popular one being adopted by the healthcare institutions who are subjected to rigorous certification audit by a third party organization/registrar.</p>\n\n<p>Very recently, SSMCHEALTH, Inc. an affiliate of the SSMC Group of Hospitals and Clinics, Inc. , with head office&nbsp;at Crosswinds Hotel, Airport Road in Baclaran, successfully hurdled its ISO 9001: 2015 Certification Audit by ISC Global with the guidance of Consultant Adrian Villanueva of the CK3 Management And Training Services .</p>\n\n<p>SSMCHEALTH Chairman, Dra. Erlinda Rabe, said that &ldquo;it is noteworthy and quite an accomplishment that the certification auditors found zero non conformity and 17 positive efforts in our practices. Our clients consisting of the general public, corporate institutions and industries and HMO members availing of our services, more particularly Pre-employment and Annual Physical Examinations, Drug testing and other customised outpatient medical services, can rest assured of our enhanced system and diligent adherence to international best practices standard.&rdquo;</p>\n\n<p>Embrace ISO? Is it good for a company? Is it good for employees? Is it good for the public? The answers by the ISO Certified establishments in the country, obviously , are in the affirmative.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', '1');
INSERT INTO `news_and_update` VALUES ('4', 'Congratulations to SSMC Health, Inc. for passing the ISO 9001:2015 Certification Audit', '2018-08-03 09:01:54', '<p>( May 5 )</p>\n', '1');
INSERT INTO `news_and_update` VALUES ('5', 'SSMC health', '2018-07-20 07:53:40', '<p>The SSMC Group is proud of its tested proprietary eSystem of APE which employs coordination at all points with client, digital technology and analytical demographics. All these at competitive and maybe lower rates vs those with conventional process on account of efficiencies. The eSystem utilizes series of computers interconnecting each medical station wirelessly, monitors bottleneck in any station if ever and eliminates delay caused by filling up of forms. Reduces time away from work stations by employees.</p>\n\n<p>Contact us now for more details as to how we can help you.</p>\n\n<p>( July 28, 2017 )</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp;</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</p>\n', '1');
INSERT INTO `news_and_update` VALUES ('6', 'ISO 9001 Awareness Seminarr', '2018-07-20 08:05:30', '<p>( April 24, 2017 )</p>\n', '1');
INSERT INTO `news_and_update` VALUES ('7', 'Compliance and social responsibility purposes of SSMC Group, SSMCHEALTH and iHEALTH! We do our part in protecting the environment for the sake of the communities we serve.', '2018-07-20 08:13:04', '<p>( August 24, 2017 )</p>\n', '1');
INSERT INTO `news_and_update` VALUES ('8', 'SSMC health, Inc.', '2018-08-03 09:02:00', '<p>ISO Certificate Turnover Ceremony at Palms Country Club on August 10, 2018</p>\n', '1');

-- ----------------------------
-- Table structure for partner
-- ----------------------------
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of partner
-- ----------------------------
INSERT INTO `partner` VALUES ('9', 'Resort World', 'http://ssmciphil.com/resortsworld/', 'upload/1sjkYzKQQFBylylJq3yxZNUvSNNelMTH.jpg');
INSERT INTO `partner` VALUES ('10', 'AMDATEX', 'http://ssmciphil.com/amdatex/', 'upload/dzmw25Yqlbs8Bn9QOmO3FJRNsIqXHqpW.PNG');

-- ----------------------------
-- Table structure for registered_account
-- ----------------------------
DROP TABLE IF EXISTS `registered_account`;
CREATE TABLE `registered_account` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(75) NOT NULL,
  `password` varchar(255) NOT NULL,
  `number` bigint(15) NOT NULL,
  `firstname` varchar(75) DEFAULT NULL,
  `lastname` varchar(75) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datelastlogin` timestamp NULL DEFAULT NULL,
  `middlename` varchar(75) DEFAULT NULL,
  `status` tinyint(10) NOT NULL,
  `date` date NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `partnerid` bigint(20) DEFAULT NULL,
  `partneraccount` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `registered_account_index` (`id`) USING HASH,
  KEY `registered_account_email_index` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2057847 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registered_account
-- ----------------------------
INSERT INTO `registered_account` VALUES ('2057845', 'rhaynel.samar.sillador@gmail.com', 'UQrppt4lHJsUMr7/nS4Q7A==', '9475537192', 'Rhaynel', 'Sillador', '2017-12-12 15:27:18', '2017-12-12 15:27:18', 'S', '0', '2017-10-15', '1992-09-05', 'MALE', '', 'PATIENT', '0', null);
INSERT INTO `registered_account` VALUES ('2057846', 'rhaynel.1.samar.sillador@gmail.com', 'UQrppt4lHJsUMr7/nS4Q7A==', '12345678', null, null, '2017-11-08 10:32:17', '2017-10-19 11:24:36', null, '1', '2017-10-19', null, null, null, 'PATIENT', '0', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ADMIN');
INSERT INTO `role` VALUES ('2', 'HR');
INSERT INTO `role` VALUES ('3', 'CS');

-- ----------------------------
-- Table structure for roleaccess
-- ----------------------------
DROP TABLE IF EXISTS `roleaccess`;
CREATE TABLE `roleaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `module` int(255) DEFAULT NULL,
  `access` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roleaccess
-- ----------------------------

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `title` varchar(125) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `type` varchar(45) NOT NULL DEFAULT '',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateupdated` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content2` text,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES ('4', 'Pre-Employment checkup', 'Pre-Employment checkup', 'Pre-Employment checkup ', 'HOSPITALS', '2017-10-17 01:24:24', '2017-10-04 14:36:17', '0', '<p>Please add more description here for Pre-Employment checkup&nbsp;...</p>\n', '1');
INSERT INTO `service` VALUES ('8', 'Ambulance Services', 'Ambulance Services', '       ', 'CLINIC', '2018-07-20 01:27:39', '2018-07-20 01:27:39', '0', '<p>&nbsp; &nbsp;&nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('9', 'Annual Medical Examination', 'Annual Medical Examination', '     ', 'CLINIC', '2018-07-20 01:28:31', '2018-07-20 01:28:31', '0', '<p>&nbsp; &nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('10', 'Audiometry', 'Audiometry', 'Audiometry', 'CLINIC', '2017-11-25 05:54:34', '2017-11-25 05:54:34', '0', '<p>Add more description here for&nbsp;</p>\n\n<p>Audiometry</p>\n', '2');
INSERT INTO `service` VALUES ('11', 'Cardiology', 'Cardiology', '    ', 'CLINIC', '2018-07-20 01:29:41', '2018-07-20 01:29:41', '0', '<p>&nbsp; &nbsp;&nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('13', 'Complete Laboratory Examination', 'Complete Laboratory Examination', 'Complete Laboratory Examination', 'CLINIC', '2018-07-20 01:30:36', '2018-07-20 01:30:36', '0', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Complete Laboratory Examination</span></span></p>\n', '2');
INSERT INTO `service` VALUES ('14', 'Medical Technologist', 'Medical Technologist', ' ', 'HOSPITALS', '2017-11-23 00:44:44', '2017-11-23 00:44:44', '0', '<ul>\n	<li>Must be a Registered Medical Technologist</li>\n	<li>With average communication, typing, analytical and interpersonal skills</li>\n	<li>Have a high sense of urgency</li>\n	<li>Must be computer literate</li>\n	<li>Willing to be assigned in other branches / satellite clinics ( Outside Metro Manila )</li>\n	<li>Must be flexible and willing to work on extended hours</li>\n	<li>Female/Male</li>\n	<li>Fresh Graduates are welcome to apply</li>\n</ul>\n', '3');
INSERT INTO `service` VALUES ('15', 'Pharmacist', 'Pharmacist', ' ', 'HOSPITALS', '2017-11-23 00:45:17', '2017-11-23 00:45:17', '0', '<ul>\n	<li>Licensed Pharmacist</li>\n	<li>Self-motivated and can work&nbsp; with minimum supervision</li>\n	<li>Applicant must be highly personable and organized</li>\n	<li>Applicant&nbsp; must be computer literate&nbsp;</li>\n</ul>\n', '3');
INSERT INTO `service` VALUES ('16', 'Respiratory Therapist', 'Respiratory Therapist', ' ', 'HOSPITALS', '2017-11-23 00:45:38', '2017-11-23 00:45:38', '0', '<ul>\n	<li>Candidate must processes at least a Bachelor&#39;s / College Degree in Respiratory Therapist, Medical Science or Equivalent.</li>\n	<li>Willing to do multi-tasking</li>\n	<li>Must be flexible and willing to work on extended hours</li>\n	<li>Applicant must be computer literate&nbsp;</li>\n</ul>\n', '3');
INSERT INTO `service` VALUES ('17', 'X-ray Technologist', 'X-ray Technologist', ' ', 'HOSPITALS', '2017-11-23 00:46:11', '2017-11-23 00:46:11', '0', '<ul>\n	<li>Candidate must be a Registered Radiology Technologist</li>\n	<li>Willing to work on extended hours</li>\n	<li>Applicant must be computer literate</li>\n</ul>\n', '3');
INSERT INTO `service` VALUES ('18', 'Diagnostics Services', 'Laboratory', ' Test', 'HOSPITALS', '2018-07-10 12:49:28', '2018-07-10 12:49:28', '0', '<p>We provide various laboratory services.</p>\n', '2');
INSERT INTO `service` VALUES ('29', 'Complete Radiological Examination', 'Complete Radiological Examination', '.   ', 'CLINIC', '2018-07-20 01:31:16', '2018-07-20 01:31:16', '0', '<p>.&nbsp; &nbsp;&nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('30', 'ECG', 'ECG', '    ', 'CLINIC', '2018-07-20 01:31:53', '2018-07-20 01:31:53', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('31', 'EENT', 'EENT', '   ', 'CLINIC', '2018-07-20 01:32:30', '2018-07-20 01:32:30', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('32', 'Executive Check-up', 'Executive Check-up', '   ', 'CLINIC', '2018-07-20 01:33:26', '2018-07-20 01:33:26', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('33', 'Internal Medicine', 'Internal Medicine', '   ', 'CLINIC', '2018-07-20 01:34:05', '2018-07-20 01:34:05', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('34', 'OB-GYN', 'OB-GYN', '   ', 'CLINIC', '2018-07-20 01:34:46', '2018-07-20 01:34:46', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('35', 'Ophthalmology', 'Ophthalmology', '   ', 'CLINIC', '2018-07-20 01:35:16', '2018-07-20 01:35:16', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('36', 'Pediatrics', 'Pediatrics', '   ', 'CLINIC', '2018-07-20 01:35:52', '2018-07-20 01:35:52', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('37', 'Pre-Employment', 'Pre-Employment', '   ', 'CLINIC', '2018-07-20 01:36:24', '2018-07-20 01:36:24', '0', '<p>&nbsp;&nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('38', 'Pulmo', 'Pulmo', '   ', 'CLINIC', '2018-07-20 01:36:54', '2018-07-20 01:36:54', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('39', 'Ultrasound', 'Ultrasound', '   ', 'CLINIC', '2018-07-20 01:37:25', '2018-07-20 01:37:25', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('40', 'Mobile X-ray', 'Mobile X-ray', 'On-site through our MOBILE X-RAY and Lab Vans or at any of our clinics and hospitals. On-site through our MOBILE X-RAY and Lab Vans or at any of our clinics and hospitals. On-site through our MOBILE X-RAY and Lab Vans or at any of our clinics and hospitals.', 'CLINIC', '2018-07-20 01:44:28', '2018-07-20 01:44:28', '0', '<p>On-site through our MOBILE X-RAY and Lab Vans</p>\n', '2');
INSERT INTO `service` VALUES ('41', 'On site Ultrasound', 'On site Ultrasound', '   ', 'CLINIC', '2018-07-20 01:38:44', '2018-07-20 01:38:44', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('42', 'PFT on Site', 'PFT on Site', '    ', 'CLINIC', '2018-07-20 01:39:15', '2018-07-20 01:39:15', '0', '<p>&nbsp; &nbsp;</p>\n', '2');
INSERT INTO `service` VALUES ('43', 'Laboratory', 'Laboratory', '   ', 'CLINIC', '2018-07-20 01:39:46', '2018-07-20 01:39:46', '0', '<p>&nbsp;&nbsp;</p>\n', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `datelastlogin` datetime DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `approver` tinyint(1) NOT NULL DEFAULT '0',
  `address` varchar(512) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`username`),
  KEY `roleid` (`roleid`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'czrnpaat', 'UQrppt4lHJsUMr7/nS4Q7A==', '2017-06-17 23:00:19', '2', 'Arvee', 'Paat', '2009-08-02', '636666666666666', '996999999', 'czrnpaat@gmail.com', '2017-10-18 08:53:12', '1', '');
INSERT INTO `user` VALUES ('17', 'alexie', 'UQrppt4lHJsUMr7/nS4Q7A==', '2017-08-02 13:05:26', '1', 'Alexie', 'Madolid', '1970-01-01', '636666666666666', '996999999', 'alexie@gmail.com', '2017-10-17 08:21:36', '1', 'Makati City');
INSERT INTO `user` VALUES ('18', 'ssmcadmin', 'UQrppt4lHJsUMr7/nS4Q7A==', '2017-08-05 19:03:45', '1', 'rhaynel2', 'rhaynel2', '1992-01-01', '1000', '1000', 'rhaynel2@gmail.com', '2017-10-17 08:25:37', '1', '');
INSERT INTO `user` VALUES ('19', 'assssss', 'tVGOKZDczLUctwYsTPWQxA==', '2017-10-20 15:50:08', '1', 'sssssss', 'ssssss', '1992-09-05', '', '', 'sssss', '2017-10-20 15:50:08', '0', '');
INSERT INTO `user` VALUES ('20', 'Romlord', 'tVGOKZDczLUctwYsTPWQxA==', '2017-10-28 09:52:49', '1', 'Romlord', 'Carlos', '0990-01-01', '', '', 'Romlord@gmail.com', '2017-10-28 09:52:49', '0', '');

-- ----------------------------
-- Table structure for userapprove
-- ----------------------------
DROP TABLE IF EXISTS `userapprove`;
CREATE TABLE `userapprove` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `controlid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userapprove
-- ----------------------------

-- ----------------------------
-- Table structure for userroleaccess
-- ----------------------------
DROP TABLE IF EXISTS `userroleaccess`;
CREATE TABLE `userroleaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(255) NOT NULL,
  `access` int(255) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1699 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userroleaccess
-- ----------------------------
INSERT INTO `userroleaccess` VALUES ('372', '1', '1', '2');
INSERT INTO `userroleaccess` VALUES ('373', '1', '2', '2');
INSERT INTO `userroleaccess` VALUES ('374', '1', '3', '2');
INSERT INTO `userroleaccess` VALUES ('375', '1', '4', '2');
INSERT INTO `userroleaccess` VALUES ('376', '2', '1', '2');
INSERT INTO `userroleaccess` VALUES ('377', '2', '2', '2');
INSERT INTO `userroleaccess` VALUES ('378', '2', '3', '2');
INSERT INTO `userroleaccess` VALUES ('379', '2', '4', '2');
INSERT INTO `userroleaccess` VALUES ('380', '3', '1', '2');
INSERT INTO `userroleaccess` VALUES ('381', '3', '2', '2');
INSERT INTO `userroleaccess` VALUES ('382', '3', '3', '2');
INSERT INTO `userroleaccess` VALUES ('383', '3', '4', '2');
INSERT INTO `userroleaccess` VALUES ('384', '4', '1', '2');
INSERT INTO `userroleaccess` VALUES ('385', '4', '2', '2');
INSERT INTO `userroleaccess` VALUES ('386', '4', '3', '2');
INSERT INTO `userroleaccess` VALUES ('387', '4', '4', '2');
INSERT INTO `userroleaccess` VALUES ('388', '5', '1', '2');
INSERT INTO `userroleaccess` VALUES ('389', '5', '2', '2');
INSERT INTO `userroleaccess` VALUES ('390', '5', '3', '2');
INSERT INTO `userroleaccess` VALUES ('391', '5', '4', '2');
INSERT INTO `userroleaccess` VALUES ('392', '6', '1', '2');
INSERT INTO `userroleaccess` VALUES ('393', '6', '2', '2');
INSERT INTO `userroleaccess` VALUES ('394', '6', '3', '2');
INSERT INTO `userroleaccess` VALUES ('395', '6', '4', '2');
INSERT INTO `userroleaccess` VALUES ('396', '7', '1', '2');
INSERT INTO `userroleaccess` VALUES ('397', '7', '2', '2');
INSERT INTO `userroleaccess` VALUES ('398', '7', '3', '2');
INSERT INTO `userroleaccess` VALUES ('399', '7', '4', '2');
INSERT INTO `userroleaccess` VALUES ('400', '8', '1', '2');
INSERT INTO `userroleaccess` VALUES ('401', '8', '2', '2');
INSERT INTO `userroleaccess` VALUES ('402', '8', '3', '2');
INSERT INTO `userroleaccess` VALUES ('403', '8', '4', '2');
INSERT INTO `userroleaccess` VALUES ('404', '9', '1', '2');
INSERT INTO `userroleaccess` VALUES ('405', '9', '2', '2');
INSERT INTO `userroleaccess` VALUES ('406', '9', '3', '2');
INSERT INTO `userroleaccess` VALUES ('407', '9', '4', '2');
INSERT INTO `userroleaccess` VALUES ('408', '10', '1', '2');
INSERT INTO `userroleaccess` VALUES ('409', '10', '2', '2');
INSERT INTO `userroleaccess` VALUES ('410', '10', '3', '2');
INSERT INTO `userroleaccess` VALUES ('411', '10', '4', '2');
INSERT INTO `userroleaccess` VALUES ('1426', '1', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1427', '1', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1428', '1', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1429', '1', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1430', '2', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1431', '2', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1432', '2', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1433', '2', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1434', '3', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1435', '3', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1436', '3', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1437', '3', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1438', '4', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1439', '4', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1440', '4', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1441', '4', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1442', '5', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1443', '5', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1444', '5', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1445', '5', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1446', '6', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1447', '6', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1448', '6', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1449', '6', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1450', '7', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1451', '7', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1452', '7', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1453', '7', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1454', '8', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1455', '8', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1456', '8', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1457', '8', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1458', '9', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1459', '9', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1460', '10', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1461', '10', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1462', '10', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1463', '10', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1464', '11', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1465', '11', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1466', '11', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1467', '11', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1468', '12', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1469', '12', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1470', '13', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1471', '13', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1472', '13', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1473', '13', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1474', '14', '1', '1');
INSERT INTO `userroleaccess` VALUES ('1475', '14', '2', '1');
INSERT INTO `userroleaccess` VALUES ('1476', '14', '3', '1');
INSERT INTO `userroleaccess` VALUES ('1477', '14', '4', '1');
INSERT INTO `userroleaccess` VALUES ('1534', '2', '1', '20');
INSERT INTO `userroleaccess` VALUES ('1535', '3', '1', '20');
INSERT INTO `userroleaccess` VALUES ('1536', '3', '2', '20');
INSERT INTO `userroleaccess` VALUES ('1537', '3', '3', '20');
INSERT INTO `userroleaccess` VALUES ('1538', '3', '4', '20');
INSERT INTO `userroleaccess` VALUES ('1539', '6', '1', '20');
INSERT INTO `userroleaccess` VALUES ('1540', '6', '2', '20');
INSERT INTO `userroleaccess` VALUES ('1541', '6', '3', '20');
INSERT INTO `userroleaccess` VALUES ('1542', '6', '4', '20');
INSERT INTO `userroleaccess` VALUES ('1543', '7', '1', '20');
INSERT INTO `userroleaccess` VALUES ('1544', '7', '2', '20');
INSERT INTO `userroleaccess` VALUES ('1545', '7', '3', '20');
INSERT INTO `userroleaccess` VALUES ('1546', '7', '4', '20');
INSERT INTO `userroleaccess` VALUES ('1547', '8', '1', '20');
INSERT INTO `userroleaccess` VALUES ('1548', '8', '2', '20');
INSERT INTO `userroleaccess` VALUES ('1549', '8', '3', '20');
INSERT INTO `userroleaccess` VALUES ('1550', '8', '4', '20');
INSERT INTO `userroleaccess` VALUES ('1551', '9', '1', '20');
INSERT INTO `userroleaccess` VALUES ('1552', '9', '2', '20');
INSERT INTO `userroleaccess` VALUES ('1553', '9', '3', '20');
INSERT INTO `userroleaccess` VALUES ('1554', '9', '4', '20');
INSERT INTO `userroleaccess` VALUES ('1555', '12', '1', '20');
INSERT INTO `userroleaccess` VALUES ('1556', '12', '2', '20');
INSERT INTO `userroleaccess` VALUES ('1557', '12', '3', '20');
INSERT INTO `userroleaccess` VALUES ('1558', '12', '4', '20');
INSERT INTO `userroleaccess` VALUES ('1559', '13', '1', '20');
INSERT INTO `userroleaccess` VALUES ('1560', '13', '2', '20');
INSERT INTO `userroleaccess` VALUES ('1561', '13', '3', '20');
INSERT INTO `userroleaccess` VALUES ('1562', '13', '4', '20');
INSERT INTO `userroleaccess` VALUES ('1627', '1', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1628', '1', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1629', '1', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1630', '1', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1631', '2', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1632', '2', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1633', '2', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1634', '2', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1635', '3', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1636', '3', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1637', '3', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1638', '3', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1639', '4', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1640', '4', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1641', '4', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1642', '4', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1643', '5', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1644', '5', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1645', '5', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1646', '5', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1647', '6', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1648', '6', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1649', '6', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1650', '6', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1651', '7', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1652', '7', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1653', '7', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1654', '7', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1655', '8', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1656', '8', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1657', '8', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1658', '8', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1659', '9', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1660', '9', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1661', '9', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1662', '9', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1663', '10', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1664', '10', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1665', '10', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1666', '10', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1667', '11', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1668', '11', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1669', '11', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1670', '11', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1671', '12', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1672', '12', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1673', '12', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1674', '12', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1675', '13', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1676', '13', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1677', '13', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1678', '13', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1679', '14', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1680', '14', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1681', '14', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1682', '14', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1683', '15', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1684', '15', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1685', '15', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1686', '15', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1687', '16', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1688', '16', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1689', '16', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1690', '16', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1691', '17', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1692', '17', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1693', '17', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1694', '17', '4', '18');
INSERT INTO `userroleaccess` VALUES ('1695', '18', '1', '18');
INSERT INTO `userroleaccess` VALUES ('1696', '18', '2', '18');
INSERT INTO `userroleaccess` VALUES ('1697', '18', '3', '18');
INSERT INTO `userroleaccess` VALUES ('1698', '18', '4', '18');
