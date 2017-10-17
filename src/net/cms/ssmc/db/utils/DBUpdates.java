package net.cms.ssmc.db.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class DBUpdates {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	
	public DBUpdates() {
		
		createRegisteredAccountTable();
	}
	
	public void createRegisteredAccountTable(){
		final String registeredAccount = "CREATE TABLE `registered_account` ("+
				  "`id` bigint(11) NOT NULL AUTO_INCREMENT,"+
				  "`email` varchar(75) NOT NULL,"+
				  "`password` varchar(255) NOT NULL,"+
				  "`number` mediumint(11) DEFAULT NULL,"+
				  "`firstname` varchar(75) DEFAULT NULL,"+
				  "`lastname` varchar(75) DEFAULT NULL,"+
				  "`datecreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',"+
				  "`datelastlogin` timestamp NULL DEFAULT NULL,"+
				  "`middlename` varchar(75) DEFAULT NULL,"+
				  "`status` tinyint(10) NOT NULL,"+
				  "PRIMARY KEY (`id`),"+
				  "UNIQUE KEY `registered_account_index` (`id`) USING HASH,"+
				  "KEY `registered_account_email_index` (`email`) USING BTREE"+
				") ENGINE=InnoDB AUTO_INCREMENT=2057840 DEFAULT CHARSET=utf8;";
		
		try {
			System.out.println("CREATING TABLE REGISTERED ACCOUNT");
			System.out.println(jdbcTemplate + " :: " + registeredAccount);
			jdbcTemplate.execute(registeredAccount);
			System.out.println("DONE CREATING TABLE REGISTERED ACCOUNT");
		} catch (Exception e) {
		}
	}
	
}
