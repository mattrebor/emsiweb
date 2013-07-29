package org.emsionline.emsiweb.service.orderform.jpa;

import java.util.List;

import org.emsionline.emsiweb.dao.CatalogDAO;
import org.emsionline.emsiweb.domain.orderform.CatalogCategory;
import org.emsionline.emsiweb.domain.orderform.CatalogItem;
import org.emsionline.emsiweb.domain.orderform.CatalogType;
import org.emsionline.emsiweb.repository.orderform.CatalogCategoryRepository;
import org.emsionline.emsiweb.repository.orderform.CatalogItemRepository;
import org.emsionline.emsiweb.repository.orderform.CatalogTypeRepository;
import org.emsionline.emsiweb.service.orderform.CatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;


@Service("jpaCatalogService")
@Repository
public class CatalogServiceImpl implements CatalogService {
	
	@Autowired
	private CatalogItemRepository catalogItemRepository;
	
	@Autowired
	private CatalogTypeRepository catalogTypeRepository;
	
	@Autowired
	private CatalogCategoryRepository categoryRepository;
	
	@Autowired
	private CatalogDAO catalogDAO;
	
	
	@Override
	public List<CatalogItem> findAllCatalogItems() {
		return Lists.newArrayList(catalogItemRepository.findAll());
	}
	
	@Override
	public List<CatalogType> findAllCatalogTypes() {
		return Lists.newArrayList(catalogTypeRepository.findAll());
	}
	
	@Override
	public List<CatalogCategory> findAllCategories() {
		return Lists.newArrayList(categoryRepository.findAll());
	}
	
	/**
	 * Each CatalogCategory obj that comes back contains a List of CatalogItem objs 
	 * that belong to the category.
	 */
	@Override
	public List<CatalogCategory> findCategoriesByCatalogType(String catalogTypeId) {
		List<CatalogCategory> result = catalogDAO.findCategoriesByCatalogType(catalogTypeId);
		for (CatalogCategory category : result) {
			List<CatalogItem> items = findCatalogItemsByCategoryCode(category.getCategoryCode());
			category.setCatalogItems(items);
		}
		return result;
	}
	
	@Override
	public List<CatalogItem> findCatalogItemsByCategoryCode(String categoryCode) {
		return catalogDAO.findCatalogItemsByCategoryCode(categoryCode);
	}
	
	@Override
	public CatalogItem getCatalogItemByItemCode(String itemCode) {
		return catalogItemRepository.findOne(itemCode);
	}
}
