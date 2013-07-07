package org.emsionline.emsiweb.web.controller;

import java.util.List;

import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchOrg;
import org.emsionline.emsiweb.service.ChurchOrgService;
import org.emsionline.emsiweb.service.ChurchService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/cemi")
@Controller
public class ChurchController {

	final Logger logger = LoggerFactory.getLogger(ChurchController.class);
	
	@Autowired
	private ChurchService churchService;
	
	@Autowired
	private ChurchOrgService churchOrgService;
	
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(method = RequestMethod.GET) 
	public String list(Model uiModel) { 
		
		// TODO: Do a lookup instead of hardcoding to id 1
		ChurchOrg church_org = churchOrgService.findById(new Long(1));
		uiModel.addAttribute("church_org", church_org);
		
		
		logger.info("Listing page fragments");
		List<Church> churches = churchService.findAll(); 
		uiModel.addAttribute("churches", churches);
		logger.info("No. of page fragments: " + churches.size());
		return "church/list"; 
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String show(@PathVariable("id") Long id, Model uiModel) {
		
		Church church = churchService.findById(id);
		uiModel.addAttribute("church", church);
		
		return "church/show";
	}
	
	
	
	
	
	
	
}
