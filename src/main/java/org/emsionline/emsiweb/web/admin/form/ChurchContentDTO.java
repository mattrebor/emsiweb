package org.emsionline.emsiweb.web.admin.form;


public class ChurchContentDTO {
	private Long churchId;
	private String page_id;
	private String locale;
	private String title;
	
	public Long getChurchId() {
		return churchId;
	}
	public void setChurchId(Long churchId) {
		this.churchId = churchId;
	}
	public String getPageId() {
		return page_id;
	}
	public void setPageId(String page_id) {
		this.page_id = page_id;
	}
	public String getLocale() {
		return locale;
	}
	public void setLocale(String locale) {
		this.locale = locale;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getKey() {
		return churchId + "|" + page_id + "|" + locale; 
	}
	
	public void setKey(String key) {
		String arr[] = key.split("|");
		
		setChurchId(new Long(arr[0]));
		setPageId(arr[1]);
		setLocale(arr[2]);
	}
}
