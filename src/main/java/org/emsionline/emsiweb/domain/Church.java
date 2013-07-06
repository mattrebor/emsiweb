package org.emsionline.emsiweb.domain;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name = "church")
public class Church implements Serializable {
	

	private static final long serialVersionUID = 4005395719591789635L;
	/**
	 * 
	 */
	
	
	private Long church_id;
	private String church_path;
	private int version;
	private ChurchOrg church_org;

	
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "church_id")
	public Long getChurchId() {
		return church_id;
	}
	
	public void setChurchId(Long church_id) {
		this.church_id = church_id;
	}
	
	@Version
	@Column(name = "version")
	public int getVersion() {
		return version;
	}
	
	public void setVersion(int version) {
		this.version = version;
	}

	@Column(name = "church_path")
	public String getChurchPath() {
		return church_path;
	}
	
	public void setChurchPath(String church_path) {
		this.church_path = church_path;
	}
	
	@ManyToOne(optional=true)
	@JoinTable(name = "church_hierarchy", joinColumns = {
			@JoinColumn(name="church_id") },
			inverseJoinColumns = {
				@JoinColumn(name="parent_church_org_id")
			}
	)
	public ChurchOrg getChurchOrg() {
		return church_org;
	}
	
	public void setChurchOrg(ChurchOrg church_org) {
		this.church_org = church_org;
	}
}
