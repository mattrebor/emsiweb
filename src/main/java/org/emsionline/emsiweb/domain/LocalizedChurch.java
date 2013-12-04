package org.emsionline.emsiweb.domain;


import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name = "localized_church")
@Access(AccessType.PROPERTY)
public class LocalizedChurch implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4166331525491946480L;
	
	private LocalizedChurchKey id;
	private String church_path;
	private int sortOrder;
	private int version;
	private String address;
	private double latitude;
	private double longitude;
	
	
	Map<ChurchDetailKey, ChurchDetail> church_details;
	private LocalizedChurchOrg parentOrg;
		
	
	@EmbeddedId 
	public LocalizedChurchKey getId() {
		return id;
	}
	
	public void setId(LocalizedChurchKey id) {
		this.id = id;
	}

	@Column(name = "church_path")
	public String getChurchPath() {
		return church_path;
	}
	
	public void setChurchPath(String church_path) {
		this.church_path = church_path;
	}
	
	@Column(name = "sort_order")
	public int getSortOrder() {
		return sortOrder;
	}
	
	public void setSortOrder(int sortOrder) {
		this.sortOrder = sortOrder;
	}
	
	@Version
	@Column(name = "version")
	public int getVersion() {
		return version;
	}
	
	public void setVersion(int version) {
		this.version = version;
	}	

	@OneToMany
	@JoinColumns({
		@JoinColumn(name = "church_id", referencedColumnName = "church_id"),
		@JoinColumn(name = "locale", referencedColumnName = "locale")})
	@MapKey
	public Map<ChurchDetailKey, ChurchDetail> getChurchDetails() {
		return church_details;
	}
	
	public void setChurchDetails(Map<ChurchDetailKey, ChurchDetail> church_details) {
		this.church_details = church_details;
	}
	
	
	public Map<String, ChurchDetail> getChurchDetailsMap() {
		
		Map<ChurchDetailKey, ChurchDetail> details = getChurchDetails();
		Map<String, ChurchDetail> detailMap = new HashMap<String, ChurchDetail>();
		
		for (ChurchDetailKey key : details.keySet()) {
			detailMap.put(key.getKey(), details.get(key));
		}
		
		return detailMap;
	}

	
	@ManyToOne(cascade=CascadeType.ALL, fetch=FetchType.LAZY, optional=true)
	@JoinTable(name = "localized_church_hierarchy", 
		inverseJoinColumns = { @JoinColumn(name="parent_entity_id", referencedColumnName = "church_org_id"),
            @JoinColumn(name = "locale", referencedColumnName = "locale")}
	)
	public LocalizedChurchOrg getParentOrg() {
		return parentOrg;
	}
	
	public void setParentOrg(LocalizedChurchOrg parentOrg) {
		this.parentOrg = parentOrg;
	}		
	
	@Column(name="address")
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}	

	@Column(name="latitude")
	public double getLatitude() {
		return latitude;
	}
	
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	
	@Column(name="longitude")
	public double getLongitude() {
		return longitude;
	}
	
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		LocalizedChurch other = (LocalizedChurch) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("LocalizedChurch [id=");
		builder.append(id);
		builder.append(", church_path=");
		builder.append(church_path);
		builder.append(", sortOrder=");
		builder.append(sortOrder);
		builder.append("]");
		return builder.toString();
	}
	

	
}
