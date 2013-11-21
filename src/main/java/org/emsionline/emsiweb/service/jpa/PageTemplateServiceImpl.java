package org.emsionline.emsiweb.service.jpa;

import org.emsionline.emsiweb.domain.PageTemplate;
import org.emsionline.emsiweb.domain.PageTemplatePK;
import org.emsionline.emsiweb.repository.PageTemplateRepository;
import org.emsionline.emsiweb.service.PageTemplateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class PageTemplateServiceImpl implements PageTemplateService {
	
	@Autowired
	private PageTemplateRepository pageTemplateRepository;
	
	
	@Override
	@Transactional(readOnly = true)
	public PageTemplate findById(PageTemplatePK id) {
		return pageTemplateRepository.findOne(id);
	}
}
