package org.emsionline.emsiweb.service;

import java.util.List;

import org.emsionline.emsiweb.domain.ChurchOrg;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ChurchOrgService {

	public List<ChurchOrg> findAll();
	
	public ChurchOrg findById(Long id);
	
	public ChurchOrg findByIdWithChurches(Long id);
	
	public ChurchOrg save(ChurchOrg church_org);
	
	public Page<ChurchOrg> findAllByPage(Pageable pageable);
}
