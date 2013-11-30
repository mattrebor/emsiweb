package org.emsionline.emsiweb.web.controller.domain;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;


public class MiscForm implements Serializable {
	
	private static final long serialVersionUID = -3517773665488389412L;
	
	private Map<String, String> values = new HashMap<String, String>();
	
	
	public MiscForm() {}
	
	
	public Map<String, String> getValues() { return values; }
}
