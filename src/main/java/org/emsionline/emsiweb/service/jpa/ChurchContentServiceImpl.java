package org.emsionline.emsiweb.service.jpa;

import java.util.List;

import org.emsionline.emsiweb.domain.ChurchContent;
import org.emsionline.emsiweb.domain.ChurchContentKey;
import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.emsionline.emsiweb.repository.ChurchContentRepository;
import org.emsionline.emsiweb.service.ChurchContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;

@Service("jpaChurchContentService")
//@Repository
@Transactional
public class ChurchContentServiceImpl implements ChurchContentService {


	
	@Autowired
	private ChurchContentRepository contentRepository;
	
	
	@Transactional(readOnly = true)
	public List<ChurchContent> findAll() {
		return Lists.newArrayList(contentRepository.findAll());
	}

	@Transactional(readOnly = true)
	public ChurchContent findById(ChurchContentKey id) {
		return contentRepository.findOne(id);
	}

	public ChurchContent save(ChurchContent church) {
		return contentRepository.save(church);
	}

	@Transactional(readOnly = true)
	public Page<ChurchContent> findAllByPage(Pageable pageable) {
		return contentRepository.findAll(pageable);
	}
	
	@Override
	@Transactional(readOnly = true)
	public List<ChurchContent> findById_ChurchIdAndId_Locale(Long church_id, String locale) {
		return contentRepository.findById_ChurchIdAndId_Locale(church_id, locale);
	}
}
