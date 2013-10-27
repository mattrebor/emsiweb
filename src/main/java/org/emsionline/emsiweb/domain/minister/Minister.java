package org.emsionline.emsiweb.domain.minister;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.eclipse.persistence.annotations.PrivateOwned;


@Entity
@Table(name="minister")
public class Minister implements Serializable {
	
	private static final long serialVersionUID = -2509792690734065832L;
	
	private Integer ministerId;
	private Integer enabled;
	
	private Set<MinisterDetail> ministerDetails;
	
	
	@Id
	@Column(name="minister_id")
	public Integer getMinisterId() { return ministerId; }
	public void setMinisterId(Integer ministerId) { this.ministerId = ministerId; }
	
	@Basic(optional=false)
	@Column(name="enabled")
	public Integer getEnabled() { return enabled; }
	public void setEnabled(Integer enabled) { this.enabled = enabled; }
	
	// bi-directional one-to-many association to MinisterDetail
	@OneToMany(cascade=CascadeType.ALL, mappedBy="minister", fetch=FetchType.EAGER)
	@PrivateOwned
	public Set<MinisterDetail> getMinisterDetails() { return ministerDetails; }
	public void setMinisterDetails(Set<MinisterDetail> ministerDetails) { this.ministerDetails = ministerDetails; }
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((ministerId == null) ? 0 : ministerId.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof Minister)) {
			return false;
		}
		Minister other = (Minister) obj;
		if (ministerId == null) {
			if (other.ministerId != null) {
				return false;
			}
		} else if (!ministerId.equals(other.ministerId)) {
			return false;
		}
		return true;
	}
}
