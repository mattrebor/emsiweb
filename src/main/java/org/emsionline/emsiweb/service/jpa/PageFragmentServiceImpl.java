package org.emsionline.emsiweb.service.jpa;

import java.util.List;

import org.emsionline.emsiweb.domain.PageFragment;
import org.emsionline.emsiweb.repository.PageFragmentRepository;
import org.emsionline.emsiweb.service.PageFragmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;

@Service("jpaPageFragmentService")
@Repository
@Transactional
public class PageFragmentServiceImpl implements PageFragmentService {


	
	@Autowired
	private PageFragmentRepository pageFragmentRepository;
	
	
	@Transactional(readOnly = true)
	public List<PageFragment> findAll() {
		return Lists.newArrayList(pageFragmentRepository.findAll());
	}

	@Transactional(readOnly = true)
	public PageFragment findById(Long id) {
		return pageFragmentRepository.findOne(id);
	}

	public PageFragment save(PageFragment pageFragment) {
		return pageFragmentRepository.save(pageFragment);
	}

	@Transactional(readOnly = true)
	public Page<PageFragment> findAllByPage(Pageable pageable) {
		return pageFragmentRepository.findAll(pageable);
	}

}
