package org.emsionline.emsiweb.domain;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;
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
	private ChurchOrg parentOrg;

	private int sort_order;
	private Map<ChurchDetailKey, ChurchDetail> church_details;
	private Map<ChurchContentKey, ChurchContent> church_content;

	
	
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
	
	@ManyToOne(fetch=FetchType.LAZY, optional=true)
	@JoinTable(name = "church_hierarchy", 
		joinColumns = {@JoinColumn(name = "church_id", referencedColumnName = "church_id")},
		inverseJoinColumns = { @JoinColumn(name="parent_entity_id", referencedColumnName = "church_org_id")}
	)
	public ChurchOrg getParentOrg() {
		return parentOrg;
	}
	
	public void setParentOrg(ChurchOrg parentOrg) {
		this.parentOrg = parentOrg;
	}	

	@Column(name = "sort_order")
	public int getSortOrder() {
		return sort_order;
	}

	public void setSortOrder(int sort_order) {
		this.sort_order = sort_order;
	}
	

	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinColumn(name = "church_id", referencedColumnName = "church_id")
	@MapKey
	public Map<ChurchDetailKey, ChurchDetail> getChurchDetails() {
		return church_details;
	}
	
	public void setChurchDetails(Map<ChurchDetailKey, ChurchDetail> church_details) {
		this.church_details = church_details;
	}
	
	public Map<String, Map<String, ChurchDetail>> getChurchDetailsMap() {
		
		Map<ChurchDetailKey, ChurchDetail> details = getChurchDetails();
		Map<String, Map<String, ChurchDetail>> detailMap = new HashMap<String, Map<String, ChurchDetail>>();
		
		for (ChurchDetailKey key : details.keySet()) {
			Map<String, ChurchDetail> langMap = detailMap.get(key.getKey());
			if (langMap == null) {
				langMap = new HashMap<String, ChurchDetail>();
				detailMap.put(key.getKey(), langMap);
			}
			
			langMap.put(key.getLocale(), details.get(key));
			
			
		}
		
		return detailMap;
	}	
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinColumn(name = "church_id", referencedColumnName = "church_id")
	@MapKey
	public Map<ChurchContentKey, ChurchContent> getChurchContent() {
		return church_content;
	}
	
	public void setChurchContent(Map<ChurchContentKey, ChurchContent> church_content) {
		this.church_content = church_content;
	}
	
	public Map<String, Map<String, ChurchContent>> getChurchContentMap() {
		
		Map<ChurchContentKey, ChurchContent> content = getChurchContent();
		Map<String, Map<String, ChurchContent>> contentMap = new HashMap<String, Map<String, ChurchContent>>();
		
		for (ChurchContentKey key : content.keySet()) {
			Map<String, ChurchContent> langMap = contentMap.get(key.getPageId());
			if (langMap == null) {
				langMap = new HashMap<String, ChurchContent>();
				contentMap.put(key.getPageId(), langMap);
			}
			
			langMap.put(key.getLocale(), content.get(key));
			
			
		}
		
		return contentMap;
	}		

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((church_id == null) ? 0 : church_id.hashCode());
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
		Church other = (Church) obj;
		if (church_id == null) {
			if (other.church_id != null)
				return false;
		} else if (!church_id.equals(other.church_id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Church [church_id=");
		builder.append(church_id);
		builder.append(", church_path=");
		builder.append(church_path);
		builder.append(", version=");
		builder.append(version);
		builder.append(", sort_order=");
		builder.append(sort_order);
		builder.append("]");
		return builder.toString();
	}

	
	/*
	@OneToMany(fetch=FetchType.LAZY)
	@JoinColumn(name = "church_id", referencedColumnName = "church_id")
	@MapKey(name = "page_id")
	public Map<String, LocalizedChurchContent> getChurchContent() {
		return church_content;
	}
	
	public void setChurchContent(Map<String, LocalizedChurchContent> church_content) {
		this.church_content = church_content;
	}*/
	
	
}
