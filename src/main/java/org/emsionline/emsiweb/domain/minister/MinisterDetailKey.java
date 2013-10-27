package org.emsionline.emsiweb.domain.minister;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="minister_detail_key")
public class MinisterDetailKey implements Serializable {
	
	private static final long serialVersionUID = 780550502224232690L;
	
	private String ministerDetailKey;
	private String shortDescr;
	private String longDescr;
	private int    displayOrder;
	private String editHtmlctrlType;
	private int    mandatory;
	private int    languageAgnostic;
	
	
	@Id
	@Column(name="minister_detail_key")
	public String getMinisterDetailKey() { return ministerDetailKey; }
	public void setMinisterDetailKey(String ministerDetailKey) { this.ministerDetailKey = ministerDetailKey; }
	
	@Column(name="short_descr")
	public String getShortDescr() { return shortDescr; }
	public void setShortDescr(String shortDescr) { this.shortDescr = shortDescr; }
	
	@Column(name="long_descr")
	public String getLongDescr() { return longDescr; }
	public void setLongDescr(String longDescr) { this.longDescr = longDescr; }
	
	@Column(name="display_order")
	public int getDisplayOrder() { return displayOrder; }
	public void setDisplayOrder(int displayOrder) { this.displayOrder = displayOrder; }
	
	@Column(name="edit_htmlctrl_type")
	public String getEditHtmlctrlType() { return editHtmlctrlType; }
	public void setEditHtmlctrlType(String editHtmlctrlType) { this.editHtmlctrlType = editHtmlctrlType; }
	
	@Column(name="mandatory")
	public int getMandatory() { return mandatory; }
	public void setMandatory(int mandatory) { this.mandatory = mandatory; }
	
	@Column(name="language_agnostic")
	public int getLanguageAgnostic() { return languageAgnostic; }
	public void setLanguageAgnostic(int languageAgnostic) { this.languageAgnostic = languageAgnostic; }
	
	
	@Override
	public int hashCode() {
		return ministerDetailKey.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj) { return true; }
		if (obj == null) { return false; }
		if (!(obj instanceof MinisterDetailKey)) { return false; }
		return ministerDetailKey.equals(((MinisterDetailKey) obj).getMinisterDetailKey());
	}
}
