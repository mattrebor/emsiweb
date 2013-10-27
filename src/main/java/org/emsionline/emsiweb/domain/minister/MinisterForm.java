package org.emsionline.emsiweb.domain.minister;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class MinisterForm implements Serializable {
	
	private static final long serialVersionUID = -109854935179387228L;
	
	private Integer id;
	
	private List<String> languages;
	
	private Map<String, Map<String, String>> details = new HashMap<String, Map<String, String>>();
	
	
	
	public MinisterForm(List<String> languages) {
		this.languages = languages;
		for (String lang : languages) {
			details.put(lang, new HashMap<String, String>());
		}
	}
	
	public Integer getId() { return id; }
	public void setId(Integer id) { this.id = id; }
	
	public List<String> getLanguages() { return languages; }
	
	public Map<String, Map<String, String>> getDetails() { return details; }
}
