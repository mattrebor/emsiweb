package org.emsionline.emsiweb.service;

import java.util.List;

import org.emsionline.emsiweb.domain.Church;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ChurchService {

	public List<Church> findAll();
	
	public Church findById(Long id);
	
	public Church save(Church church);
	
	public Page<Church> findAllByPage(Pageable pageable);
}
