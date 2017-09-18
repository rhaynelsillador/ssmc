package net.ssmc.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.ssmc.dao.ContactUsReplyDao;
import net.ssmc.model.ContactUsReply;

public class ContactUsReplyDaoImpl implements ContactUsReplyDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private final static String FINDALL = "SELECT CR.message, CR.datereplied, U.username as repliedby, CR.type  FROM contactusreply AS CR INNER JOIN contactus as C ON C.id = CR.contactusid LEFT JOIN USER AS U ON U.id=CR.repliedby WHERE C.id=?";
	
	@Override
	public List<ContactUsReply> findAll(long id) {
		return jdbcTemplate.query(FINDALL, new Object[]{id}, new BeanPropertyRowMapper<ContactUsReply>(ContactUsReply.class));
	}

}
