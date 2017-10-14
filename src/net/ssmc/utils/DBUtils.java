package net.ssmc.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class DBUtils {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void init(){
		createTables();
		createClinic();
		createClinicContact();
		createContactUs();
		createControl();
		createFAQ();
		createContactInformationTable();
	}
	
	private void createTables(){
		final String SQL = "CREATE TABLE `aboutus`  ("+
		 " `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,"+
		  "`name` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',"+
		  "`content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,"+
		  "`dateadded` datetime(0) NOT NULL,"+
		  "`dateupdated` datetime(0) NOT NULL,"+
		  "`type` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',"+
		  "PRIMARY KEY (`id`) USING BTREE"+
		") ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createClinic(){
		final String SQL = "CREATE TABLE `clinic`  ("+
		  "`id` int(11) NOT NULL AUTO_INCREMENT,"+
		  "`name` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,"+
		  "`dateupdated` datetime(0) DEFAULT NULL,"+
		  "`dateadded` datetime(0) NOT NULL,"+
		  "`description` text CHARACTER SET utf8 COLLATE utf8_general_ci,"+
		  "`logo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,"+
		  "`address1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,"+
		  "`city` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,"+
		  "`map` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,"+
		  "`address2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,"+
		  "`type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',"+
		  "PRIMARY KEY (`id`) USING BTREE"+
		") ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createClinicContact(){
		final String SQL = "CREATE TABLE `cliniccontact`  ( "+
		  "`id` int(11) NOT NULL AUTO_INCREMENT,"+
		  "`type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,"+
		  "`info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,"+
		  "`clinicid` int(11) NOT NULL,"+
		  "`dateadded` datetime(0) NOT NULL,"+
		  "`dateupdated` datetime(0) NOT NULL,"+
		  "PRIMARY KEY (`id`) USING BTREE,"+
		  "INDEX `clinicid`(`clinicid`) USING BTREE,"+
		  "CONSTRAINT `clinicid` FOREIGN KEY (`clinicid`) REFERENCES `clinic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE"+
		") ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createContactUs(){
		final String SQL = "CREATE TABLE `contactus`  ( "+
		  "`id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, "+
		  "`dateadded` datetime(0) NOT NULL, "+
		  "`email` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '', "+
		  "`message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, "+
		  "`subject` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '', "+
		  "PRIMARY KEY (`id`) USING BTREE "+
		") ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact; ";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createControl(){
		final String SQL = "CREATE TABLE `control`  ( "+
		  "`id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, "+
		  "`module` int(10) UNSIGNED NOT NULL DEFAULT 0, "+
		  "`moduleid` int(10) UNSIGNED NOT NULL DEFAULT 0, "+
		  "PRIMARY KEY (`id`) USING BTREE "+
		") ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createFAQ(){
		final String SQL = "CREATE TABLE `faq`  ( "+
		  "`id` int(11) NOT NULL AUTO_INCREMENT, "+
		  "`question` varchar(520) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL, "+
		  "`answer` text CHARACTER SET utf8 COLLATE utf8_general_ci, "+
		  "`dateadded` timestamp(0) DEFAULT NULL, "+
		  "`dateupdated` timestamp(0) DEFAULT NULL, "+
		  "`status` tinyint(10) DEFAULT NULL, "+
		  "PRIMARY KEY (`id`) USING BTREE "+
		") ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createHeader(){
		final String SQL = "CREATE TABLE `header`  ( "+
		  "`id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, "+
		  "`name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '', "+
		  "`title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '', "+
		  "`content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, "+
		  "`status` tinyint(1) NOT NULL DEFAULT 0, "+
		  "`dateadded` datetime(0) NOT NULL, "+
		  "`dateupdated` datetime(0) NOT NULL, "+
		  "`type` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '', "+
		  "`page` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL, "+
		  "PRIMARY KEY (`id`) USING BTREE "+
		") ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createImages(){
		final String SQL = "CREATE TABLE `images`  ( "+
		  "`id` int(11) NOT NULL AUTO_INCREMENT, "+
		  "`image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL, "+
		  "`status` tinyint(4) DEFAULT NULL, "+
		  "`serviceid` int(11) DEFAULT NULL, "+
		  "`type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL, "+
		  "PRIMARY KEY (`id`) USING BTREE "+
		") ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createRole(){
		final String SQL = "CREATE TABLE `role`  ( "+
		  "`id` int(11) NOT NULL AUTO_INCREMENT, "+
		  "`name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL, "+
		  "PRIMARY KEY (`id`) USING BTREE "+
		") ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createRoleAccess(){
		final String SQL = "CREATE TABLE `roleaccess`  ( "+
			  "`id` int(11) NOT NULL AUTO_INCREMENT, "+
			  "`roleid` int(11) DEFAULT NULL, "+
			  "`module` int(255) DEFAULT NULL, "+
			  "`access` int(255) DEFAULT NULL, "+
			  "PRIMARY KEY (`id`) USING BTREE "+
			") ENGINE = InnoDB AUTO_INCREMENT = 256 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact; ";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createServices(){
		final String SQL = "CREATE TABLE `service`  ( "+
		  "`id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, "+
		  "`name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '', "+
		  "`title` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '', "+
		  "`content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, "+
		  "`type` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '', "+
		  "`dateadded` datetime(0) NOT NULL, "+
		  "`dateupdated` datetime(0) NOT NULL, "+
		  "`status` tinyint(1) NOT NULL DEFAULT 0, "+
		  "`content2` text CHARACTER SET latin1 COLLATE latin1_swedish_ci, "+
		  "PRIMARY KEY (`id`) USING BTREE "+
		") ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createUser(){
		final String SQL = "CREATE TABLE `user`  ( "+
		  "`id` int(11) NOT NULL AUTO_INCREMENT, "+
		  "`username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, "+
		  "`password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL, "+
		  "`datelastlogin` timestamp(0) DEFAULT NULL, "+
		  "`roleid` int(11) DEFAULT NULL, "+
		  "`firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL, "+
		  "`lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL, "+
		  "`birthday` date DEFAULT NULL, "+
		  "`mobile` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL, "+
		  "`phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL, "+
		  "`email` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL, "+
		  "`datecreated` timestamp(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0), "+
		  "`approver` tinyint(1) NOT NULL DEFAULT 0, "+
		  "`address` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '', "+
		  "PRIMARY KEY (`id`, `username`) USING BTREE, "+
		  "INDEX `roleid`(`roleid`) USING BTREE, "+
		  "CONSTRAINT `roleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT "+
		") ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;"+
		""+
		"INSERT INTO `user` VALUES (1, 'czrnpaat11', '123456a', '2017-06-17 23:00:19', 2, 'Arvee', 'Paat', '2009-08-02', '636666666666666', '996999999', 'czrnpaat@gmail.com', '2017-08-29 23:25:08', 0, ''); "+
		"INSERT INTO `user` VALUES (17, 'alexie', 'tVGOKZDczLUctwYsTPWQxA==', '2017-08-02 13:05:26', 1, 'Alexie', 'Madolid', '1970-01-01', '636666666666666', '996999999', 'alexie@gmail.com', '2017-08-19 17:19:55', 0, 'Makati City');"+
		"INSERT INTO `user` VALUES (18, 'rhaynel2', 'tVGOKZDczLUctwYsTPWQxA==', '2017-08-05 19:03:45', 1, 'rhaynel2', 'rhaynel2', '1992-01-01', '1000', '1000', 'rhaynel2@gmail.com', '2017-08-19 17:10:43', 1, '');";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createUserApprove(){
		final String SQL = "CREATE TABLE `userapprove`  ( "+
		  "`id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, "+
		  "`userid` int(10) UNSIGNED NOT NULL DEFAULT 0, "+
		  "`controlid` int(10) UNSIGNED NOT NULL DEFAULT 0, "+
		  "PRIMARY KEY (`id`) USING BTREE "+
		") ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createUserRoleAccess(){
		final String SQL = "CREATE TABLE `userroleaccess`  ( "+
		  " `id` int(11) NOT NULL AUTO_INCREMENT, "+
		  " `module` int(255) NOT NULL, "+
		  " `access` int(255) NOT NULL, "+
		  " `userid` int(11) NOT NULL, "+
		  " PRIMARY KEY (`id`) USING BTREE, "+
		  " INDEX `userid`(`userid`) USING BTREE, "+
		  " CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE "+
		  " ) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;";
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
	
	private void createContactInformationTable(){
		final String SQL = "CREATE TABLE `contact_information` ("+
		  "`id` bigint(20) NOT NULL AUTO_INCREMENT,"+
		  "`name` varchar(15) NOT NULL,"+
		  "`value` varchar(75) NOT NULL,"+
		  "`timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',"+
		  "PRIMARY KEY (`id`)"+
		") ENGINE=InnoDB DEFAULT CHARSET=utf8;";
		
		try {
			jdbcTemplate.execute(SQL);
		} catch (Exception e) {
		}
	}
}
