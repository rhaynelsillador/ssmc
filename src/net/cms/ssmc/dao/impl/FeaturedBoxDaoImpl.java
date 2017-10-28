package net.cms.ssmc.dao.impl;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.cms.ssmc.dao.FeaturedBoxDao;
import net.cms.ssmc.model.FeaturedBox;

public class FeaturedBoxDaoImpl implements FeaturedBoxDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private final String SQL 		= "SELECT * FROM featuredbox";
	private final String SQLCOUNT 	= "SELECT COUNT(ID) FROM featuredbox";
	private final String UPDATE 	= "UPDATE featuredbox SET NAME = ?, DESCRIPTION = ?, TIMESTAMP = ? WHERE ID = ?";
	
	@Override
	public long count() {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}
	@Override
	public List<FeaturedBox> findAll() {
		return jdbcTemplate.query(SQL, new BeanPropertyRowMapper<FeaturedBox>(FeaturedBox.class));
	}

	@Override
	public FeaturedBox findOne(long id) {
		return jdbcTemplate.queryForObject(SQL+ " WHERE ID = ?", new Object[]{id}, new BeanPropertyRowMapper<FeaturedBox>(FeaturedBox.class));
	}
	@Override
	public void update(FeaturedBox featuredBox) {
		jdbcTemplate.update(UPDATE, new Object[]{featuredBox.getName(), featuredBox.getDescription(), new Timestamp(System.currentTimeMillis()), featuredBox.getId()});
	}

	

}
