package org.emsionline.emsiweb.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "church_content")
public class LocalizedChurchContent implements Serializable  {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2125664998392363235L;
	private Long church_id;
	private String locale;
	private String title;
	private String body;
	
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
	
	@Column(name = "title")
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	@Column(name = "body")
	@Lob
	public String getBody() {
		return body;
	}
	
	public void setBody(String body) {
		this.body = body;
	}
	
	
	
}
