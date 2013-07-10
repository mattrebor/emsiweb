package org.emsionline.emsiweb.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "church_details")
public class LocalizedChurchDetails implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2730943259766246852L;
	
	private Long church_id;
	private String locale;
	private String church_name;
	
	@Id
	@Column(name = "church_id")
	public Long getChurchId() {
		return church_id;
	}
	
	public void setChurchId(Long church_id) {
		this.church_id = church_id;
	}
	
	@Id
	@Column(name = "locale")
	public String getLocale() {
		return locale;
	}
	
	public void setLocale(String locale) {
		this.locale = locale;
	}
	
	@Column(name = "church_name")
	public String getChurchName() {
		return church_name;
	}
	
	public void setChurchName(String church_name) {
		this.church_name = church_name;
	}
	

	
	
}
