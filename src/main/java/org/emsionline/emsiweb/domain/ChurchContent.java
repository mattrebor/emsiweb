package org.emsionline.emsiweb.domain;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "church_content")
public class ChurchContent implements Serializable  {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2125664998392363235L;
	private ChurchContentKey id;
	private String title;
	private String body;
	
	@EmbeddedId 
	public ChurchContentKey getId() {
		return id;
	}
	
	public void setId(ChurchContentKey id) {
		this.id = id;
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
	@Basic(fetch=FetchType.LAZY)
	public String getBody() {
		return body;
	}
	
	public void setBody(String body) {
		this.body = body;
	}
	
	
	
}
