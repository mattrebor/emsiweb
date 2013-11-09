package org.emsionline.emsiweb.web.controller.helper;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.emsionline.emsiweb.domain.minister.Minister;
import org.emsionline.emsiweb.domain.minister.MinisterDetail;


public class MinisterListItem implements Serializable {
	
	private static final long serialVersionUID = 983968296665559598L;
	
	private Map<String, String> details = new HashMap<String, String>();
	
	public MinisterListItem(Minister minister) {
		Set<MinisterDetail> ministerDetails = minister.getMinisterDetails();
		for (MinisterDetail m : ministerDetails) {
			details.put(m.getId().getMinisterDetailKey(), m.getValue());
		}
	}

	public Map<String, String> getDetails() { return details; }
}
