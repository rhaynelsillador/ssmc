package net.cms.ssmc.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.cms.ssmc.dao.ImageDao;
import net.ssmc.enums.Module;
import net.ssmc.model.Image;

public class ImageDaoImpl implements ImageDao {

	private static final String INSERT	= 	"INSERT INTO IMAGES (image, status, serviceid, type) VALUES (?,?,?,?)";
//	private static final String FINDIMAGES	= "SELECT * FROM IMAGES WHERE serviceid = ?";
	private static final String FINDALLIMAGES	= "SELECT * FROM IMAGES WHERE serviceid = ? AND type = ?";
	private static final String DELETE	= "DELETE FROM IMAGES WHERE id = ?";
	private static final String UPDATE	= "UPDATE IMAGES SET status = ? WHERE id = ?";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void addImages(int id, Module module, String image) {
		jdbcTemplate.update(INSERT, new Object[] {
				image,
				1,
				id,
				module.toString()
			});
	}

	@Override
	public List<Image> retrieveImage(int id, Module module) {
		return jdbcTemplate.query(FINDALLIMAGES, new Object[]{id, module.toString()}, new BeanPropertyRowMapper<Image>(Image.class));
	}

	@Override
	public void delete(int id) {
		jdbcTemplate.update(DELETE,new Object[] {id});
	}

	@Override
	public void update(int id, boolean status) {
		jdbcTemplate.update(UPDATE,new Object[] {status, id});
	}

}
