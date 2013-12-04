package org.emsionline.emsiweb.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class ChurchOrgDetailKey implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4184951485858140642L;
	
	private Long church_org_id;
	private String locale;
	private String key;
	
	public ChurchOrgDetailKey() {
		
	}
	
	public ChurchOrgDetailKey(Long church_org_id, String locale, String key) {
		this.church_org_id = church_org_id;
		this.locale = locale;
		this.key = key;
	}
	
	
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((church_org_id == null) ? 0 : church_org_id.hashCode());
		result = prime * result + ((locale == null) ? 0 : locale.hashCode());
		result = prime * result + ((key == null) ? 0 : key.hashCode());
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
		ChurchOrgDetailKey other = (ChurchOrgDetailKey) obj;
		if (church_org_id == null) {
			if (other.church_org_id != null)
				return false;
		} else if (!church_org_id.equals(other.church_org_id))
			return false;
		if (locale == null) {
			if (other.locale != null)
				return false;
		} else if (!locale.equals(other.locale))
			return false;
		if (key == null) {
			if (other.key != null)
				return false;
		} else if (!key.equals(other.key))
			return false;
		return true;
	}



	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ChurchOrgDetailKey [church_org_id=");
		builder.append(church_org_id);
		builder.append(", locale=");
		builder.append(locale);
		builder.append(", key=");
		builder.append(key);
		builder.append("]");
		return builder.toString();
	}
	
	
	
}
