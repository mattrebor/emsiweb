package org.emsionline.emsiweb.domain;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "church_org_detail")
public class ChurchOrgDetail implements Serializable  {

	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3734452044699629518L;
	private ChurchOrgDetailKey id;
	private String value;
	
	@EmbeddedId 
	public ChurchOrgDetailKey getId() {
		return id;
	}
	
	public void setId(ChurchOrgDetailKey id) {
		this.id = id;
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
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((value == null) ? 0 : value.hashCode());
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
		ChurchOrgDetail other = (ChurchOrgDetail) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (value == null) {
			if (other.value != null)
				return false;
		} else if (!value.equals(other.value))
			return false;
		return true;
	}	

	
	
}
