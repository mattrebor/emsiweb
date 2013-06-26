package org.emsionline.emsiweb.service;

import java.util.List;

import org.emsionline.emsiweb.domain.PageFragment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface PageFragmentService {

	public List<PageFragment> findAll();
	
	public PageFragment findById(Long id);
	
	public PageFragment save(PageFragment contact);
	
	public Page<PageFragment> findAllByPage(Pageable pageable);
}
