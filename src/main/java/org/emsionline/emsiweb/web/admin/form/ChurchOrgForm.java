package org.emsionline.emsiweb.web.admin.form;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchOrg;

public class ChurchOrgForm {
	private Long churchOrgId;
	private Map<String, String> name;
	private List<ChurchOrg> childOrgs;
	private List<Church> churches; 
	
	public ChurchOrgForm() {
		name = new HashMap<String, String>();
	}

	public Map<String, String> getName() {
		return name;
	}

	public void setName(Map<String, String> name) {
		this.name = name;
	}

	public List<ChurchOrg> getChildOrgs() {
		return childOrgs;
	}

	public void setChildOrgs(List<ChurchOrg> childOrgs) {
		this.childOrgs = childOrgs;
	}
	
	public List<Church> getChurches() {
		return churches;
		
	}

	public void setChurches(List<Church> churches) {
		this.churches = churches;
	}

	public Long getChurchOrgId() {
		return churchOrgId;
	}

	public void setChurchOrgId(Long churchOrgId) {
		this.churchOrgId = churchOrgId;
	}

	
	
	
	
}
