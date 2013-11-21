package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import javax.persistence.*;


@Embeddable
public class PageTemplatePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="page_id")
	private String pageId;

	private String locale;

	public PageTemplatePK() {
	}
	public String getPageId() {
		return this.pageId;
	}
	public void setPageId(String pageId) {
		this.pageId = pageId;
	}
	public String getLocale() {
		return this.locale;
	}
	public void setLocale(String locale) {
		this.locale = locale;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof PageTemplatePK)) {
			return false;
		}
		PageTemplatePK castOther = (PageTemplatePK)other;
		return 
			this.pageId.equals(castOther.pageId)
			&& this.locale.equals(castOther.locale);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.pageId.hashCode();
		hash = hash * prime + this.locale.hashCode();
		
		return hash;
	}
}