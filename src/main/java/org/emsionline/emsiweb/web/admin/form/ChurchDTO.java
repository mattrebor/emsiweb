package org.emsionline.emsiweb.web.admin.form;

import java.util.Map;

public class ChurchDTO {
	private Long churchId;
	private String churchPath;
	private int sortOrder;
	private Map<String, String> name;
	
	public Long getChurchId() {
		return churchId;
	}
	public void setChurchId(Long churchId) {
		this.churchId = churchId;
	}
	public String getChurchPath() {
		return churchPath;
	}
	public void setChurchPath(String churchPath) {
		this.churchPath = churchPath;
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
	
	
}
