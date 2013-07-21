package org.emsionline.emsiweb.web.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchContent;
import org.emsionline.emsiweb.domain.ChurchContentKey;
import org.emsionline.emsiweb.domain.ChurchOrg;
import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.emsionline.emsiweb.domain.LocalizedChurchKey;
import org.emsionline.emsiweb.domain.LocalizedChurchOrg;
import org.emsionline.emsiweb.domain.LocalizedChurchOrgKey;
import org.emsionline.emsiweb.service.ChurchContentService;
import org.emsionline.emsiweb.service.ChurchOrgService;
import org.emsionline.emsiweb.service.ChurchService;
import org.emsionline.emsiweb.service.LocalizedChurchOrgService;
import org.emsionline.emsiweb.service.LocalizedChurchService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.support.RequestContextUtils;

@RequestMapping("/cemi")
@Controller
public class ChurchController {

	// TODO: Do a lookup instead of hardcoding to id 1
	public static final int CEMI_CHURCH_ORG_ID = 1;
	
	final Logger logger = LoggerFactory.getLogger(ChurchController.class);

	@Autowired
	private LocalizedChurchService churchService;
	

	@Autowired
	private ChurchContentService churchContentService;

	
	@Autowired
	private LocalizedChurchOrgService churchOrgService;

	@Autowired
	private MessageSource messageSource;

	@RequestMapping(method = RequestMethod.GET)
	public String list(HttpServletRequest req, Model uiModel) {
		
		Locale locale = RequestContextUtils.getLocale(req);

		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(CEMI_CHURCH_ORG_ID), locale.getLanguage()));
		uiModel.addAttribute("church_org", church_org);
		
		//List<LocalizedChurch> churches = churchService.findAll();
		//uiModel.addAttribute("churches", churches);
		//logger.info("No. of churches: " + churches.size());
		return "cemi/list";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String show(HttpServletRequest req, @PathVariable("id") Long id, Model uiModel) {
		Locale locale = RequestContextUtils.getLocale(req);

		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(CEMI_CHURCH_ORG_ID), locale.getLanguage()));
		uiModel.addAttribute("church_org", church_org);

		LocalizedChurch church = churchService.findById(new LocalizedChurchKey(new Long(id), locale.getLanguage()));
		uiModel.addAttribute("church", church);
		
		ChurchContent content = churchContentService.findById(new ChurchContentKey(new Long(id), locale.getLanguage(), "intro"));
		uiModel.addAttribute("content", content);

		return "cemi/show";
	}

	
	
}
