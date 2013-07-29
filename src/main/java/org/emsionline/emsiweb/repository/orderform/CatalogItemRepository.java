package org.emsionline.emsiweb.repository.orderform;

import org.emsionline.emsiweb.domain.orderform.CatalogItem;
import org.springframework.data.repository.PagingAndSortingRepository;


public interface CatalogItemRepository extends PagingAndSortingRepository<CatalogItem, String>{
	
}
