package net.ssmc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;

import net.ssmc.dao.CityDao;
import net.ssmc.model.City;
import net.ssmc.utils.DataTableHelper;

public class CityDaoImpl implements CityDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	@Override
	public long create(City city) {
		final String INSERT = "INSERT INTO city (citykey, name) VALUES (?,?)";
		GeneratedKeyHolder holder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
		    @Override
		    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
		        PreparedStatement statement = con.prepareStatement(INSERT, Statement.RETURN_GENERATED_KEYS);
		        statement.setString(1, city.getCitykey());
		        statement.setString(2, city.getName());
		        return statement;
		    }
		}, holder);
		long primaryKey = holder.getKey().longValue();
		return primaryKey;
	}

	@Override
	public City retrieve(long id) {
		String SQL = "SELECT * FROM city WHERE id = ?";
		return jdbcTemplate.queryForObject(SQL, new Object[]{id}, new BeanPropertyRowMapper<City>(City.class));
	}

	@Override
	public List<City> retrieveAll(Map<String, String> request) {
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		String SQL = "SELECT * FROM city "+ DataTableHelper.sort(request) + " LIMIT "+((start-1)*end)+", "+(end);
		return jdbcTemplate.query(SQL, new BeanPropertyRowMapper<City>(City.class));
	}

	@Override
	public void update(City city, long id) {
		String SQL = "UPDATE city SET citykey = ?, name = ? WHERE id = ?";
		jdbcTemplate.update(SQL, new Object[]{city.getCitykey(), city.getName(), id});
	}

	@Override
	public void delete(long id) {
		String SQL = "DELETE FROM city WHERE id = ?";
		jdbcTemplate.update(SQL, new Object[]{id});
	}

	@Override
	public List<City> retrieveAll() {
		String SQL = "SELECT * FROM city";
		return jdbcTemplate.query(SQL, new Object[]{}, new BeanPropertyRowMapper<City>(City.class));
	}

	

}
