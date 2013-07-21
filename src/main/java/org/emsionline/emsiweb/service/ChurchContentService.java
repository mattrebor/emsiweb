package org.emsionline.emsiweb.service;

import java.util.List;

import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchContent;
import org.emsionline.emsiweb.domain.ChurchContentKey;
import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ChurchContentService {

	public List<ChurchContent> findAll();
	
	public ChurchContent findById(ChurchContentKey id);
	
	public ChurchContent save(ChurchContent ChurchContent);
	
	public List<ChurchContent> findById_ChurchIdAndId_Locale(Long church_id, String locale);
	
	public Page<ChurchContent> findAllByPage(Pageable pageable);
}
