package org.emsionline.emsiweb.web.admin.form;

import java.util.Map;

public class ChurchOrgDTO {
	private Long id;
	private String churchOrgPath;
	private int sortOrder;
	private Map<String, String> name;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public int getSortOrder() {
		return sortOrder;
	}
	public void setSortOrder(int sortOrder) {
		this.sortOrder = sortOrder;
	}
	public Map<String, String> getName() {
		return name;
	}
	public void setName(Map<String, String> name) {
		this.name = name;
	}
	public String getChurchOrgPath() {
		return churchOrgPath;
	}
	public void setChurchOrgPath(String churchOrgPath) {
		this.churchOrgPath = churchOrgPath;
	}
	
	
}
