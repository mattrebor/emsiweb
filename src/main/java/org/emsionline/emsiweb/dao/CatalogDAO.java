package org.emsionline.emsiweb.dao;

import java.util.List;

import org.emsionline.emsiweb.domain.orderform.CatalogCategory;
import org.emsionline.emsiweb.domain.orderform.CatalogItem;


public interface CatalogDAO {
	
	public List<CatalogCategory> findCategoriesByCatalogType(String catalogTypeId);
	
	public List<CatalogItem> findCatalogItemsByCategoryCode(String categoryCode);
}
