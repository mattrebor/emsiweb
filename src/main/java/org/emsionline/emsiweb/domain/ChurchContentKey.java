package org.emsionline.emsiweb.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Id;

@Embeddable
public class ChurchContentKey implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2915393322548946793L;
	protected Long church_id;
	protected String locale;
	protected String page_id;
	
	public ChurchContentKey() {
		
	}
	
	public ChurchContentKey(Long church_id, String locale, String page_id) {
		this.church_id = church_id;
		this.locale = locale;
		this.page_id = page_id;
	}
	
	
	@Column(name = "church_id")
	public Long getChurchId() {
		return church_id;
	}



	public void setChurchId(Long church_id) {
		this.church_id = church_id;
	}

	
	@Column(name = "locale")
	public String getLocale() {
		return locale;
	}



	public void setLocale(String locale) {
		this.locale = locale;
	}


	@Column(name = "page_id")
	public String getPageId() {
		return page_id;
	}

	public void setPageId(String page_id) {
		this.page_id = page_id;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((church_id == null) ? 0 : church_id.hashCode());
		result = prime * result + ((locale == null) ? 0 : locale.hashCode());
		result = prime * result + ((page_id == null) ? 0 : page_id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ChurchContentKey other = (ChurchContentKey) obj;
		if (church_id == null) {
			if (other.church_id != null)
				return false;
		} else if (!church_id.equals(other.church_id))
			return false;
		if (locale == null) {
			if (other.locale != null)
				return false;
		} else if (!locale.equals(other.locale))
			return false;
		if (page_id == null) {
			if (other.page_id != null)
				return false;
		} else if (!page_id.equals(other.page_id))
			return false;
		return true;
	}



	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ChurchContentKey [church_id=");
		builder.append(church_id);
		builder.append(", locale=");
		builder.append(locale);
		builder.append(", page_id=");
		builder.append(page_id);
		builder.append("]");
		return builder.toString();
	}
	
	
	
}
