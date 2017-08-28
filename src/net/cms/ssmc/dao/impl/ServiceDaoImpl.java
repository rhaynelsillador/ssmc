package net.cms.ssmc.dao.impl;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.cms.ssmc.dao.ServiceDao;
import net.cms.ssmc.model.Service;
import net.ssmc.enums.App;
import net.ssmc.model.Image;
import net.ssmc.utils.DataTableHelper;

public class ServiceDaoImpl implements ServiceDao {

	private final String SQL 				= "SELECT * FROM SERVICE ";
	private static final String FINDONE		= "SELECT * FROM SERVICE WHERE id = ?";
	private static final String FINDACTIVEONE = "SELECT * FROM SERVICE WHERE type = ? AND status = ?";
	private static final String SQLCOUNT 	= "SELECT COUNT(id) FROM SERVICE ";
	private static final String INSERT 		= "INSERT INTO SERVICE (name, title, content, content2, type, dateadded, dateupdated) VALUES (?, ?, ?, ?, ?, ?, ?)";
	private static final String DELETEBYID 	= "DELETE FROM SERVICE WHERE id= ? ";
	private static final String UPDATE	 	= "UPDATE SERVICE SET name= ?, title = ?, content = ?, content2 = ?, type=?, dateupdated = ? WHERE id= ? ";
	
	private static final String DELETEBYSERVICEID 	= "DELETE FROM SERVICEIMAGES WHERE serviceid= ? ";
	private static final String INSERTSERVICEIMAGES = "INSERT INTO SERVICEIMAGES (image, status, serviceid) VALUES (?, ?, ?)";
	private static final String FINDIMAGES	= "SELECT * FROM SERVICEIMAGES WHERE serviceid = ?";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public long count() {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}
	
	@Override
	public int create(Service service) {
		return jdbcTemplate.update(INSERT, new Object[] {
				service.getName(),
				service.getTitle(),
				service.getContent(),
				service.getContent2(),
				service.getType().toString(),
				new Timestamp(System.currentTimeMillis()),
				new Timestamp(System.currentTimeMillis()),
			});
	}

	@Override
	public void update(Service service, int id) {
		jdbcTemplate.update(UPDATE, new Object[] {
				service.getName(),
				service.getTitle(),
				service.getContent(),
				service.getContent2(),
				service.getType().toString(),
				new Timestamp(System.currentTimeMillis()),
				id
			});
	}

	@Override
	public List<Service> retrieveAll(Map<String, String> request) {
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		String SQL = this.SQL + " " + DataTableHelper.sort(request) + " LIMIT "+((start-1)*end)+", "+(end);
		return jdbcTemplate.query(SQL, new BeanPropertyRowMapper<Service>(Service.class));
	}

	@Override
	public Service retrieve(int id) {
		Service service = jdbcTemplate.queryForObject(FINDONE, new Object[]{id}, new BeanPropertyRowMapper<Service>(Service.class));
		List<Image> images = jdbcTemplate.query(FINDIMAGES, new Object[]{id}, new BeanPropertyRowMapper<Image>(Image.class));
		service.setImages(images);
		return service;
	}

	@Override
	public Service retrieveActiveService(App app) {
		return jdbcTemplate.queryForObject(FINDACTIVEONE, new Object[]{app.toString(), true}, new BeanPropertyRowMapper<Service>(Service.class));
	}

	@Override
	public void delete(int id) {
		jdbcTemplate.update(DELETEBYID, new Object[] {id});
	}

	@Override
	public void addImages(Service service, int id) {
		jdbcTemplate.update(DELETEBYSERVICEID, new Object[] {id});
		for (Image image : service.getImages()) {
			jdbcTemplate.update(INSERTSERVICEIMAGES, new Object[] {
					image.getImage(),
					1,
					id
				});
		}
	}

	

}
