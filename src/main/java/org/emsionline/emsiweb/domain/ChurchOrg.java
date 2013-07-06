package org.emsionline.emsiweb.domain;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
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
	private Set<ChurchOrg> church_orgs;
	private Set<Church> churches;
	

	
	
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
	
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinTable(name = "church_hierarchy", joinColumns = {
				@JoinColumn(name="parent_church_org_id", unique = true) },
				inverseJoinColumns = {
					@JoinColumn(name="church_org_id")
		}
	)
	public Set<ChurchOrg> getChurchOrgs() {
		return church_orgs;			
	}
	
	public void setChurchOrgs(Set<ChurchOrg> church_orgs) {
		this.church_orgs = church_orgs;
	}
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinTable(name = "church_hierarchy", joinColumns = {
				@JoinColumn(name="parent_church_org_id", unique = true) },
				inverseJoinColumns = {
					@JoinColumn(name="church_id")
		}
	)
	public Set<Church> getChurches() {
		return churches;			
	}
	
	public void setChurches(Set<Church> churches) {
		this.churches = churches;
	}
	
	
}
