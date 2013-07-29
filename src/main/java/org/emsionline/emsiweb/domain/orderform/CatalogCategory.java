package org.emsionline.emsiweb.domain.orderform;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="catalog_category")
public class CatalogCategory implements Serializable {
	
	private static final long serialVersionUID = -1413907048489586061L;
	
	private String categoryCode;
	private String categoryName;
	
	private List<CatalogItem> catalogItems;
	
	@Id
	@Column(name="category_code")
	public String getCategoryCode() { return categoryCode; }
	public void setCategoryCode(String categoryCode) { this.categoryCode = categoryCode; }
	
	@Column(name="category_name")
	public String getCategoryName() { return categoryName; }
	public void setCategoryName(String categoryName) { this.categoryName = categoryName; }
	
	public List<CatalogItem> getCatalogItems() { return catalogItems; }
	public void setCatalogItems(List<CatalogItem> catalogItems) { this.catalogItems = catalogItems; }
}
