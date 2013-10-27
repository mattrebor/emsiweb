package org.emsionline.emsiweb.service.minister.jpa;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.emsionline.emsiweb.domain.minister.Minister;
import org.emsionline.emsiweb.domain.minister.MinisterDetailKey;
import org.emsionline.emsiweb.repository.minister.MinisterDetailKeyRepository;
import org.emsionline.emsiweb.repository.minister.MinisterRepository;
import org.emsionline.emsiweb.service.minister.MinisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;


@Service("jpaMinisterService")
@Repository
public class MinisterServiceImpl implements MinisterService {
	
	@Autowired
	private MinisterRepository ministerRepository;
	
	@Autowired
	private MinisterDetailKeyRepository ministerDetailKeyRepository;
	
	
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	
	@Override
	public List<Minister> findAllMinisters() {
		return Lists.newArrayList(ministerRepository.findAll());
	}
	
	@Override
	public Minister getMinisterByMinisterId(Integer id) {
		return ministerRepository.findOne(id);
	}
	
	@Override
	public Minister findOne(Integer id) {
		return ministerRepository.findOne(id);
	}
	
	@Override
	public Minister save(Minister minister) {
		return ministerRepository.save(minister);
	}
	
	@Override
	public List<MinisterDetailKey> findAllMinisterDetailKeys() {
		return Lists.newArrayList(ministerDetailKeyRepository.findAll());
	}
	
	
	@Override
	public List<String> getLanguages() {
		String sql = 
				"select locale"
				+", case "
					+" when locale='en' then 1"
					+" when locale='zh' then 2"
					+" else 100"
					+" end as sort_order"
				+" from locales"
				+" order by sort_order"
				;
		List<String> languages = namedParameterJdbcTemplate.query(sql, (Map<String,?>) null, new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getString(1).toLowerCase();
			}
		});
		return languages;
	}
}
