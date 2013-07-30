package org.emsionline.emsiweb.dao.jdbc.orderform;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.emsionline.emsiweb.dao.CatalogDAO;
import org.emsionline.emsiweb.domain.orderform.CatalogCategory;
import org.emsionline.emsiweb.domain.orderform.CatalogItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;


@Repository
public class CatalogDAOJDBCImpl implements CatalogDAO {
	
	
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	
	@Override
	public List<CatalogCategory> findCategoriesByCatalogType(String catalogTypeId) {
		String sql = 
				"SELECT B.CATEGORY_CODE, B.CATEGORY_NAME"
				+" FROM CATALOG_TYPE_CATEGORY_XREF A INNER JOIN CATALOG_CATEGORY B"
				+" WHERE A.CATEGORY_CODE = B.CATEGORY_CODE"
					+" AND A.CATALOG_TYPE_ID = :catalogTypeId"
				;
		
		SqlParameterSource namedParams = new MapSqlParameterSource("catalogTypeId", catalogTypeId);
		List<CatalogCategory> list = namedParameterJdbcTemplate.query(sql, namedParams, new RowMapper<CatalogCategory>() {
			@Override
			public CatalogCategory mapRow(ResultSet rs, int rowNum) throws SQLException {
				CatalogCategory result = new CatalogCategory();
				result.setCategoryCode(rs.getString("category_code"));
				result.setCategoryName(rs.getString("category_name"));
				return result;
			}
		});
		return list;
	}
	
	
	@Override
	public List<CatalogItem> findCatalogItemsByCategoryCode(String categoryCode) {
		String sql = 
				"SELECT B.ITEM_CODE"
					+", B.ITEM_SHORT_DESCR"
					+", B.NUM_VOLUMES"
					+", B.SORT_ORDER"
					+", B.AUTHOR"
					+", B.PRICE_US"
					+", B.ACTIVE"
				+" FROM CATEGORY_CATALOG_ITEM_XREF A INNER JOIN CATALOG_ITEM B"
				+" WHERE A.CATALOG_ITEM = B.ITEM_CODE"
					+" AND A.CATEGORY_CODE = :categoryCode"
					+" AND B.ACTIVE = 'Y'";
		
		SqlParameterSource namedParams = new MapSqlParameterSource("categoryCode", categoryCode);
		List<CatalogItem> list = namedParameterJdbcTemplate.query(sql, namedParams, new RowMapper<CatalogItem>() {
			@Override
			public CatalogItem mapRow(ResultSet rs, int rowNum) throws SQLException {
				CatalogItem result = new CatalogItem();
				result.setItemCode(rs.getString("item_code"));
				result.setItemShortDescr(rs.getString("item_short_descr"));
				result.setNumVolumes(rs.getInt("num_volumes"));
				result.setSortOrder(rs.getInt("sort_order"));
				result.setAuthor(rs.getString("author"));
				result.setPriceUS(rs.getDouble("price_us"));
				result.setActive(rs.getString("active"));
				return result;
			}
		});
		return list;
	}
}
