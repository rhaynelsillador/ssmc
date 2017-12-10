package net.cms.ssmc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;

import net.cms.ssmc.dao.NewsAndUpdateDao;
import net.cms.ssmc.model.NewsAndUpdate;
import net.ssmc.utils.DataTableHelper;

public class NewsAndUpdateDaoImpl implements NewsAndUpdateDao{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private DataTableHelper dataTableHelper;
	
	private static final String SQLCOUNT = "SELECT COUNT(ID) FROM news_and_update";
	private static final String SQLFINDONE = "SELECT * FROM news_and_update WHERE ID=?";
	private static final String SQLFINDALL = "SELECT * FROM news_and_update";
	private static final String SQLDELETE = "DELETE FROM news_and_update WHERE ID = ?";
	private static final String SQLUPDATE = "UPDATE news_and_update SET title=?, news=? WHERE ID=?";
	private static final String SQLPUBLISHED = "UPDATE news_and_update SET status = ? WHERE ID=?";
	private static final String SQLCREATE = "INSERT INTO news_and_update (title, date, news, status) VALUES (?,?,?,?)";
	
	@Override
	public long count(Map<String, String> request) {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}

	@Override
	public long create(NewsAndUpdate newsAndUpdate) {
		GeneratedKeyHolder holder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
		    @Override
		    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
		        PreparedStatement statement = con.prepareStatement(SQLCREATE, Statement.RETURN_GENERATED_KEYS);
		        statement.setString(1, newsAndUpdate.getTitle());
		        statement.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
		        statement.setString(3, newsAndUpdate.getNews());
		        statement.setInt(4, 0);
		        return statement;
		    }
		}, holder);

		long primaryKey = holder.getKey().longValue();
		return primaryKey;
	}

	@Override
	public void delete(long id) {
		jdbcTemplate.update(SQLDELETE, new Object[]{id});
	}

	@Override
	public void update(NewsAndUpdate newsAndUpdate) {
		jdbcTemplate.update(SQLUPDATE, new Object[]{newsAndUpdate.getTitle(), newsAndUpdate.getNews(), newsAndUpdate.getId()});
	}

	@Override
	public List<NewsAndUpdate> findAll(Map<String, String> request) {
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		String SQL = this.SQLFINDALL + " " + dataTableHelper.sort(request) + " LIMIT "+((start-1)*end)+", "+(end);
		return jdbcTemplate.query(SQL, new BeanPropertyRowMapper<NewsAndUpdate>(NewsAndUpdate.class));
	}

	@Override
	public NewsAndUpdate findOne(long id) {
		return jdbcTemplate.queryForObject(SQLFINDONE, new Object[]{id}, new BeanPropertyRowMapper<NewsAndUpdate>(NewsAndUpdate.class));
	}

	@Override
	public int published(long id) {
		int status = findOne(id).getStatus() == 0 ? 1: 0;
		jdbcTemplate.update(SQLPUBLISHED, new Object[]{status, id});
		return status;
	}

}
