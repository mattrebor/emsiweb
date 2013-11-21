package org.emsionline.emsiweb.service;

import org.emsionline.emsiweb.domain.PageTemplate;
import org.emsionline.emsiweb.domain.PageTemplatePK;


public interface PageTemplateService {
	
	public PageTemplate findById(PageTemplatePK id);
}
