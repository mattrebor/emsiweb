package org.emsionline.emsiweb.domain.orderform;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="catalog_item")
public class CatalogItem implements Serializable {
	
	private static final long serialVersionUID = 3052227067851802796L;
	
	private String	itemCode;
	private String	itemShortDescr;
	private Integer	numVolumes;
	private Integer	sortOrder;
	private String	author;
	private Double	priceUS;
	private String	active;
	
	
	@Id
	@Column(name = "item_code")
	public String getItemCode() { return itemCode; }
	public void setItemCode(String itemCode) { this.itemCode = itemCode; }
	
	@Column(name = "item_short_descr")
	public String getItemShortDescr() { return itemShortDescr; }
	public void setItemShortDescr(String itemShortDescr) { this.itemShortDescr = itemShortDescr; }
	
	@Column(name = "num_volumes")
	public Integer getNumVolumes() { return numVolumes; }
	public void setNumVolumes(Integer numVolumes) { this.numVolumes = numVolumes; }
	
	@Column(name = "sort_order")
	public Integer getSortOrder() { return sortOrder; }
	public void setSortOrder(Integer sortOrder) { this.sortOrder = sortOrder; }
	
	@Column(name = "author")
	public String getAuthor() { return author; }
	public void setAuthor(String author) { this.author = author; }
	
	@Column(name = "price_us")
	public Double getPriceUS() { return priceUS; }
	public void setPriceUS(Double priceUS) { this.priceUS = priceUS; }
	
	@Column(name = "active")
	public String getActive() { return active; }
	public void setActive(String active) { this.active = active; }
}
