package org.emsionline.emsiweb.service;

import java.util.List;

import org.emsionline.emsiweb.domain.LocalizedChurchOrg;
import org.emsionline.emsiweb.domain.LocalizedChurchOrgKey;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface LocalizedChurchOrgService {

	public List<LocalizedChurchOrg> findAll();
	
	public LocalizedChurchOrg findById(LocalizedChurchOrgKey id);
			
	public Page<LocalizedChurchOrg> findAllByPage(Pageable pageable);
}
