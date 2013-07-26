package org.emsionline.emsiweb.service;

import java.util.List;

import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.emsionline.emsiweb.domain.LocalizedChurchKey;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface LocalizedChurchService {

	public List<LocalizedChurch> findAll();
	
	public LocalizedChurch findById(LocalizedChurchKey id);
		
	public Page<LocalizedChurch> findAllByPage(Pageable pageable);
	
	public List<LocalizedChurch> findAllByLocale(String locale);

}
