package org.emsionline.emsiweb.domain;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class ChurchOrgDetail implements Serializable  {

	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3734452044699629518L;
	private Long church_org_id;
	private String locale;
	private String key;
	private String value;
	
	
	@Column(name = "church_org_id")
	public Long getChurchOrgId() {
		return church_org_id;
	}
	
	public void setChurchOrgId(Long church_org_id) {
		this.church_org_id = church_org_id;
	}
	
	
	@Column(name = "locale")
	public String getLocale() {
		return locale;
	}
	
	public void setLocale(String locale) {
		this.locale = locale;
	}
	
	@Column(name = "key")
	public String getKey() {
		return key;
	}
	
	public void setKey(String key) {
		this.key = key;
	}
	
	@Column(name = "value")
	public String getValue() {
		return value;
	}
	
	public void setValue(String value) {
		this.value = value;
	}	

	
	
}
