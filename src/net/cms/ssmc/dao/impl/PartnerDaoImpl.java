package net.cms.ssmc.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.cms.ssmc.dao.PartnerDao;
import net.cms.ssmc.model.Partner;
import oracle.net.aso.p;

public class PartnerDaoImpl implements PartnerDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private final String SQL = "SELECT * FROM partner";
	private final String SQLFINDONE = "SELECT * FROM partner WHERE ID = ?";
	private final String SQLCOUNT = "SELECT COUNT(ID) FROM partner";
	private final String SQLINSERT = "INSERT INTO partner (name, url, logo) VALUES (?,?,?)";
	private final String SQLDELETE = "DELETE FROM PARTNER WHERE ID = ?";
	private final String SQLUPDATE = "UPDATE PARTNER SET NAME=?, URL=?, LOGO=? WHERE ID = ?";
	
	@Override
	public long count(Map<String, String> request) {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}

	@Override
	public void create(Partner partners) {
		jdbcTemplate.update(SQLINSERT, new Object[] {
				partners.getName(),
				partners.getUrl(),
				partners.getLogo()
			});
	}

	@Override
	public Partner findOne(long id) {
		return jdbcTemplate.queryForObject(SQLFINDONE, new Object[]{id}, new BeanPropertyRowMapper<Partner>(Partner.class));
	}

	@Override
	public List<Partner> retrievePartners(Map<String, String> request) {
		String sortKey = "";
		for (Map.Entry<String, String> entry : request.entrySet()) {
			if(entry.getKey().contains("sort")){
				sortKey = " ORDER BY "+entry.getKey().substring(5, entry.getKey().length()-1)+" "+entry.getValue();
			}
		}
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		return jdbcTemplate.query(SQL+ sortKey +" LIMIT "+((start-1)*end)+", "+(end), new BeanPropertyRowMapper<Partner>(Partner.class));
	}

	@Override
	public void delete(long id) {
		jdbcTemplate.update(SQLDELETE, new Object[]{id});
	}

	@Override
	public void update(Partner partner) throws Exception {
		System.out.println(partner.getName());
		System.out.println(partner.getId());
		jdbcTemplate.update(SQLUPDATE, new Object[]{partner.getName(), partner.getUrl(), partner.getLogo(), partner.getId()});
	}

}
