package org.emsionline.emsiweb.domain;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
	private Map<String, LocalizedChurchOrgDetails> church_org_details;
	

	
	
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
	
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinTable(name = "church_hierarchy", 
			   joinColumns = { @JoinColumn(name="parent_church_org_id", unique = true) },
			   inverseJoinColumns = { @JoinColumn(name="church_org_id") }
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
			   joinColumns = { @JoinColumn(name="parent_church_org_id", unique = true) },
			   inverseJoinColumns = { @JoinColumn(name="church_id") }
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
	
	@OneToMany
	@JoinColumn(name = "church_org_id", referencedColumnName = "church_org_id")
	@MapKey(name = "locale")
	public Map<String, LocalizedChurchOrgDetails> getChurchOrgDetails() {
		return church_org_details;
	}
	
	public void setChurchOrgDetails(Map<String, LocalizedChurchOrgDetails> church_org_details) {
		this.church_org_details = church_org_details;
	}	
	
}
