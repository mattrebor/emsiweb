package org.emsionline.emsiweb.domain.minister;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;


@Embeddable
public class MinisterDetailPK implements Serializable {
	
	private static final long serialVersionUID = 780550502224232690L;
	
	private Integer ministerId;
	private String  locale;
	private String  ministerDetailKey;
	
	
	public MinisterDetailPK() {}
	public MinisterDetailPK(Integer ministerId, String locale, String ministerDetailKey) {
		this.ministerId = ministerId;
		this.locale = locale;
		this.ministerDetailKey = ministerDetailKey;
	}
	
	
	@Column(name="minister_id")
	public Integer getMinisterId() { return ministerId; }
	public void setMinisterId(Integer ministerId) { this.ministerId = ministerId; }
	
	@Column(name="locale")
	public String getLocale() { return locale; }
	public void setLocale(String locale) { this.locale = locale; }
	
	@Column(name="minister_detail_key")
	public String getMinisterDetailKey() { return ministerDetailKey; }
	public void setMinisterDetailKey(String ministerDetailKey) { this.ministerDetailKey = ministerDetailKey; }
	
	
	@Override
	public int hashCode() {
		return new HashCodeBuilder(17, 37)
			.append(ministerId)
			.append(locale)
			.append(ministerDetailKey)
			.toHashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj) { return true; }
		if (obj == null) { return false; }
		if (!(obj instanceof MinisterDetailPK)) { return false; }
		
		MinisterDetailPK rhs = (MinisterDetailPK) obj;
		return new EqualsBuilder()
			.append(ministerId, rhs.ministerId)
			.append(locale, rhs.locale)
			.append(ministerDetailKey, rhs.ministerDetailKey)
			.isEquals();
	}
}
