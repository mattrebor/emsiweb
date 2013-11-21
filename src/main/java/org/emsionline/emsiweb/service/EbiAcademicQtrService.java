package org.emsionline.emsiweb.service;

import java.util.List;

import org.emsionline.emsiweb.domain.EbiAcademicQtr;
import org.emsionline.emsiweb.domain.EbiAcademicQtrPK;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


public interface EbiAcademicQtrService {
	
	public List<EbiAcademicQtr> findAll();
	
	public EbiAcademicQtr findById(EbiAcademicQtrPK pk);
	
	public EbiAcademicQtr save(EbiAcademicQtr ebiAcademicQtr);
	
	public Page<EbiAcademicQtr> findAllByPage(Pageable pageable);
}
