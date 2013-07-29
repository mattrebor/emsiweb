package org.emsionline.emsiweb.service.orderform;

import java.util.List;

import org.emsionline.emsiweb.domain.orderform.CatalogCategory;
import org.emsionline.emsiweb.domain.orderform.CatalogItem;
import org.emsionline.emsiweb.domain.orderform.CatalogType;


public interface CatalogService {
	
	//public List<CatalogItem> findByCatalogTypeAndCategory(String catalogType, String category);
	
	public List<CatalogItem> findAllCatalogItems();
	
	public List<CatalogType> findAllCatalogTypes();
	
	public List<CatalogCategory> findAllCategories();
	
	public List<CatalogCategory> findCategoriesByCatalogType(String catalogTypeId);
	
	public List<CatalogItem> findCatalogItemsByCategoryCode(String categoryCode);
	
	public CatalogItem getCatalogItemByItemCode(String itemCode);
}
