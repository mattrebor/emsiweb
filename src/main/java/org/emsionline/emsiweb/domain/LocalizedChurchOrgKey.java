package org.emsionline.emsiweb.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class LocalizedChurchOrgKey implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4725976451690476202L;
	protected Long church_org_id;
	protected String locale;
	
	public LocalizedChurchOrgKey() {
		
	}
	
	public LocalizedChurchOrgKey(Long church_org_id, String locale) {
		this.church_org_id = church_org_id;
		this.locale = locale;
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



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((church_org_id == null) ? 0 : church_org_id.hashCode());
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
		LocalizedChurchOrgKey other = (LocalizedChurchOrgKey) obj;
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
		return true;
	}



	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("LocalizedChurchOrgKey [church_org_id=");
		builder.append(church_org_id);
		builder.append(", locale=");
		builder.append(locale);
		builder.append("]");
		return builder.toString();
	}
	
	
	
}
