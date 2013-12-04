package org.emsionline.emsiweb.domain;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name = "church_org")
public class ChurchOrg implements Serializable {
	



	/**
	 * 
	 */
	private static final long serialVersionUID = -8965548075940479060L;
	
	private Long church_org_id;
	private String church_org_path;
	private int version;
	private List<ChurchOrg> church_orgs;
	private List<Church> churches;
	private int sort_order;
	private Map<ChurchOrgDetailKey, ChurchOrgDetail> church_org_details;
	

	
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "church_org_id")
	public Long getChurchOrgId() {
		return church_org_id;
	}
	
	public void setChurchOrgId(Long church_org_id) {
		this.church_org_id = church_org_id;
	}
	
	@Version
	@Column(name = "version")
	public int getVersion() {
		return version;
	}
	
	public void setVersion(int version) {
		this.version = version;
	}

	@Column(name = "church_org_path")
	public String getChurchOrgPath() {
		return church_org_path;
	}
	
	public void setChurchOrgPath(String church_org_path) {
		this.church_org_path = church_org_path;
	}

	
	@OneToMany(fetch=FetchType.LAZY)
	@JoinTable(name = "church_hierarchy",
			   joinColumns =  { @JoinColumn(name="parent_entity_id", referencedColumnName = "church_org_id")},
			   inverseJoinColumns = { @JoinColumn(name="church_org_id", referencedColumnName = "church_org_id")}
	)
	@OrderBy("sortOrder")	
	public List<ChurchOrg> getChurchOrgs() {
		return church_orgs;			
	}
	
	public void setChurchOrgs(List<ChurchOrg> church_orgs) {
		this.church_orgs = church_orgs;
	}

	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinTable(name = "church_hierarchy", 
			   joinColumns = { @JoinColumn(name="parent_entity_id", referencedColumnName = "church_org_id")},
			   inverseJoinColumns = { @JoinColumn(name="church_id", referencedColumnName = "church_id")}
	)
	@OrderBy("sortOrder")
	public List<Church> getChurches() {
		return churches;			
	}
	
	public void setChurches(List<Church> churches) {
		this.churches = churches;
	}
	

	@Column(name = "sort_order")
	public int getSortOrder() {
		return sort_order;
	}

	public void setSortOrder(int sort_order) {
		this.sort_order = sort_order;
	}
	
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinColumn(name = "church_org_id", referencedColumnName = "church_org_id")
	@MapKey
	public Map<ChurchOrgDetailKey, ChurchOrgDetail> getChurchOrgDetails() {
		return church_org_details;
	}
	
	public void setChurchOrgDetails(Map<ChurchOrgDetailKey, ChurchOrgDetail> church_org_details) {
		this.church_org_details = church_org_details;
	}	
	
	public Map<String, Map<String, ChurchOrgDetail>> getChurchOrgDetailsMap() {
		
		Map<ChurchOrgDetailKey, ChurchOrgDetail> details = getChurchOrgDetails();
		Map<String, Map<String, ChurchOrgDetail>> detailMap = new HashMap<String, Map<String, ChurchOrgDetail>>();
		
		for (ChurchOrgDetailKey key : details.keySet()) {
			Map<String, ChurchOrgDetail> langMap = detailMap.get(key.getKey());
			if (langMap == null) {
				langMap = new HashMap<String, ChurchOrgDetail>();
				detailMap.put(key.getKey(), langMap);
			}
			
			langMap.put(key.getLocale(), details.get(key));
			
			
		}
		
		return detailMap;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((church_org_id == null) ? 0 : church_org_id.hashCode());
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
		ChurchOrg other = (ChurchOrg) obj;
		if (church_org_id == null) {
			if (other.church_org_id != null)
				return false;
		} else if (!church_org_id.equals(other.church_org_id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ChurchOrg [church_org_id=");
		builder.append(church_org_id);
		builder.append(", church_org_path=");
		builder.append(church_org_path);
		builder.append(", version=");
		builder.append(version);
		builder.append(", sort_order=");
		builder.append(sort_order);
		builder.append("]");
		return builder.toString();
	}
	
	
}
