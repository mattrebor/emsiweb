package org.emsionline.emsiweb.domain;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class ChurchDetail implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2730943259766246852L;
	
	private Long church_id;
	private String locale;
	private String key;
	private String value;
	

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


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((church_id == null) ? 0 : church_id.hashCode());
		result = prime * result + ((key == null) ? 0 : key.hashCode());
		result = prime * result + ((locale == null) ? 0 : locale.hashCode());
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
		ChurchDetail other = (ChurchDetail) obj;
		if (church_id == null) {
			if (other.church_id != null)
				return false;
		} else if (!church_id.equals(other.church_id))
			return false;
		if (key == null) {
			if (other.key != null)
				return false;
		} else if (!key.equals(other.key))
			return false;
		if (locale == null) {
			if (other.locale != null)
				return false;
		} else if (!locale.equals(other.locale))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ChurchDetail [church_id=");
		builder.append(church_id);
		builder.append(", locale=");
		builder.append(locale);
		builder.append(", key=");
		builder.append(key);
		builder.append(", value=");
		builder.append(value);
		builder.append("]");
		return builder.toString();
	}
	

	
	
}
