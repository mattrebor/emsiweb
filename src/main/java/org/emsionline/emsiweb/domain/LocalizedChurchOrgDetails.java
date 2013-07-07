package org.emsionline.emsiweb.domain;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "church_org_details")
public class LocalizedChurchOrgDetails implements Serializable  {

	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3734452044699629518L;
	private Long church_org_id;
	private String locale;
	private String church_org_name;
	
	@Id
	@Column(name = "church_org_id")
	public Long getChurchOrgId() {
		return church_org_id;
	}
	
	public void setChurchOrgId(Long church_org_id) {
		this.church_org_id = church_org_id;
	}
	
	@Id
	@Column(name = "locale")
	public String getLocale() {
		return locale;
	}
	
	public void setLocale(String locale) {
		this.locale = locale;
	}
	
	@Column(name = "church_org_name")
	public String getChurchOrgName() {
		return church_org_name;
	}
	
	public void setChurchOrgName(String church_org_name) {
		this.church_org_name = church_org_name;
	}
	

	
	
}
