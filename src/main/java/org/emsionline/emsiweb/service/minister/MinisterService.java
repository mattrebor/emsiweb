package org.emsionline.emsiweb.service.minister;

import java.util.List;

import org.emsionline.emsiweb.domain.minister.Minister;
import org.emsionline.emsiweb.domain.minister.MinisterDetailKey;


public interface MinisterService {
	
	public List<Minister> findAllMinisters();
	
	public Minister getMinisterByMinisterId(Integer id);
	
	public Minister findOne(Integer id);
	
	public Minister save(Minister minister);
	
	public List<MinisterDetailKey> findAllMinisterDetailKeys();
	
	public List<String> getLanguages();
	
	public Integer getNextMinisterId();
}
