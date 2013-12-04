package org.emsionline.emsiweb.web.admin.form;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchOrg;

public class ChurchForm {
	private Long churchId;
	private Map<String, String> name;
	private String address;
	private double longitude;
	private double latitude;
	
	public ChurchForm() {
		name = new HashMap<String, String>();
	}

	public Map<String, String> getName() {
		return name;
	}

	public void setName(Map<String, String> name) {
		this.name = name;
	}

	public Long getChurchId() {
		return churchId;
	}

	public void setChurchId(Long churchId) {
		this.churchId = churchId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	
	
	
	
}
