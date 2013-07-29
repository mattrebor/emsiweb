package org.emsionline.emsiweb.domain.orderform;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="catalog_type")
public class CatalogType implements Serializable {
	
	private static final long serialVersionUID = -895205272308339094L;
	
	private String catalogTypeId;
	private String catalogTypeName;
	
	@Id
	@Column(name="catalog_type_id")
	public String getCatalogTypeId() { return catalogTypeId; }
	public void setCatalogTypeId(String catalogTypeId) { this.catalogTypeId = catalogTypeId; }
	
	@Column(name="catalog_type_name")
	public String getCatalogTypeName() { return catalogTypeName; }
	public void setCatalogTypeName(String catalogTypeName) { this.catalogTypeName = catalogTypeName; }
}
