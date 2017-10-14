package net.cms.ssmc.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.cms.ssmc.dao.ContactInformationDao;
import net.cms.ssmc.model.ContactInformation;

public class ContactInformationDaoImpl implements ContactInformationDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private final static String INSERT = 	"UPDATE contact_information set value=?, timestamp = ? WHERE name = ?";
	private final static String FINDALL = 	"SELECT * FROM contact_information";
	
	@Override
	public void create(List<ContactInformation> contactInformations) {
		jdbcTemplate.batchUpdate(INSERT, new BatchPreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps, int i) throws SQLException {
				ContactInformation contactInformation = contactInformations.get(i);
				ps.setString(1, contactInformation.getValue());
				ps.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
				ps.setString(3, contactInformation.getName());
			}
			@Override
			public int getBatchSize() {
				return contactInformations.size();
			}
		  });
	}

	@Override
	public List<ContactInformation> findAll() {
		return jdbcTemplate.query(FINDALL, new BeanPropertyRowMapper<ContactInformation>(ContactInformation.class));
	}

}
