package net.ssmc.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import net.ssmc.dao.ClinicDao;
import net.ssmc.dao.mapper.ClinicMapper;
import net.ssmc.model.Clinic;
import net.ssmc.utils.DataTableHelper;

public class ClinicDaoImpl implements ClinicDao{

	private final String SQL 				= "SELECT CC.*, CY.name as cityname, CY.citykey as citykey FROM CLINIC AS CC INNER JOIN CITY AS CY ON CC.cityid = CY.id";
	private static final String SQLCOUNT 	= "SELECT COUNT(id) FROM CLINIC ";
	private static final String INSERT 		= "INSERT INTO CLINIC (name, dateadded, dateupdated, description, address1, address2, cityid, map, type, email, phone, mobile) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String UPDATE 		= "UPDATE CLINIC SET name=?, dateupdated=?, description=?, address1=?, address2=?, cityid=?, map=?, type=?, email=?, phone=?, mobile=? WHERE id=?";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private DataTableHelper dataTableHelper;
	
	@Override
	public long count() {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}
	
	@Override
	public void create(Clinic clinic) throws Exception {
		jdbcTemplate.update(INSERT, new Object[] {
				clinic.getName(),
				clinic.getDateAdded(),
				clinic.getDateUpdated(),
				clinic.getDescription(),
				clinic.getAddress1(),
				clinic.getAddress2(),
				clinic.getCity().getId(),
				clinic.getMap(),
				clinic.getType(),
				clinic.getEmail(),
				clinic.getPhone(),
				clinic.getMobile()
		});
	}

	@Override
	public List<Clinic> retrieveAll(Map<String, String> request) {
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		return jdbcTemplate.query(this.SQL + dataTableHelper.formFilter(request) + dataTableHelper.sort(request) + " LIMIT "+((start-1)*end)+", "+(end), new ClinicMapper());
	}

	@Override
	public Clinic retrieve(long id) {
		final String SQL = this.SQL + " WHERE CC.id = ?";
		return jdbcTemplate.queryForObject(SQL, new Object[]{id}, new ClinicMapper());
	}

	@Override
	public void update(Clinic clinic) {
		jdbcTemplate.update(UPDATE, new Object[] {
				clinic.getName(),
				clinic.getDateUpdated(),
				clinic.getDescription(),
				clinic.getAddress1(),
				clinic.getAddress2(),
				clinic.getCity().getId(),
				clinic.getMap(),
				clinic.getType(),
				clinic.getEmail(),
				clinic.getPhone(),
				clinic.getMobile(),
				clinic.getId()
		});
	}

	
}
