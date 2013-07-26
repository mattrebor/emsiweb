package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name = "localized_church_org")
@Access(AccessType.PROPERTY)
public class LocalizedChurchOrg implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6811362804990967838L;
	
	private LocalizedChurchOrgKey id;
	private String church_org_path;
	private int version;
	private List<LocalizedChurchOrg> church_orgs;
	private List<LocalizedChurch> churches;
	private int sort_order;
	private Map<String, ChurchOrgDetail> church_org_details;
	private LocalizedChurchOrg parentOrg;


	
	
	@EmbeddedId
	public LocalizedChurchOrgKey getId() {
		return id;
	}
	
	public void setId(LocalizedChurchOrgKey id) {
		this.id = id;
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
	
	
	@ElementCollection
	@CollectionTable(
			name = "church_org_detail",
			joinColumns = {@JoinColumn(name = "church_org_id", referencedColumnName = "church_org_id"),
					@JoinColumn(name = "locale", referencedColumnName = "locale")})
	@MapKey(name = "key")
	public Map<String, ChurchOrgDetail> getChurchOrgDetails() {
		return church_org_details;
	}
	
	public void setChurchOrgDetails(Map<String, ChurchOrgDetail> church_org_details) {
		this.church_org_details = church_org_details;
	}

	@OneToMany(fetch=FetchType.LAZY)
	@JoinTable(name = "localized_church_hierarchy",
			   joinColumns =  { @JoinColumn(name="parent_entity_id", referencedColumnName = "church_org_id"),
			                    @JoinColumn(name = "locale", referencedColumnName = "locale")},
			   inverseJoinColumns = { @JoinColumn(name="church_org_id", referencedColumnName = "church_org_id"),
	                                  @JoinColumn(name = "locale", referencedColumnName = "locale")}
	)
	@OrderBy("sortOrder")
	public List<LocalizedChurchOrg> getChurchOrgs() {
		return church_orgs;			
	}
	
	
	public void setChurchOrgs(List<LocalizedChurchOrg> church_orgs) {
		this.church_orgs = church_orgs;
	}

	
	
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinTable(name = "localized_church_hierarchy", 
			   joinColumns = { @JoinColumn(name="parent_entity_id", referencedColumnName = "church_org_id"),
                               @JoinColumn(name = "locale", referencedColumnName = "locale")},
			   inverseJoinColumns = { @JoinColumn(name="church_id", referencedColumnName = "church_id"),
                                      @JoinColumn(name = "locale", referencedColumnName = "locale")}
	)
	@OrderBy("sortOrder")
	public List<LocalizedChurch> getChurches() {
		return churches;			
	}
	
	public void setChurches(List<LocalizedChurch> churches) {
		this.churches = churches;
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
		LocalizedChurchOrg other = (LocalizedChurchOrg) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Column(name = "sort_order")
	public int getSortOrder() {
		return sort_order;
	}

	public void setSortOrder(int sort_order) {
		this.sort_order = sort_order;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("LocalizedChurchOrg [id=");
		builder.append(id);
		builder.append(", church_org_path=");
		builder.append(church_org_path);
		builder.append(", sort_order=");
		builder.append(sort_order);
		builder.append("]");
		return builder.toString();
	}
	
	/*
	@OneToMany
	@JoinColumn(name = "church_org_id", referencedColumnName = "church_org_id")
	@MapKey(name = "locale")
	public Map<String, ChurchOrgDetail> getChurchOrgDetails() {
		return church_org_details;
	}
	
	public void setChurchOrgDetails(Map<String, ChurchOrgDetail> church_org_details) {
		this.church_org_details = church_org_details;
	}	
	*/
	
	
}
