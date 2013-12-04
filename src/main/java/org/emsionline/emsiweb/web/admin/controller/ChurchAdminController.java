package org.emsionline.emsiweb.web.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpServletRequest;

import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchContent;
import org.emsionline.emsiweb.domain.ChurchContentKey;
import org.emsionline.emsiweb.domain.ChurchDetail;
import org.emsionline.emsiweb.domain.ChurchDetailKey;
import org.emsionline.emsiweb.domain.ChurchOrg;
import org.emsionline.emsiweb.domain.ChurchOrgDetail;
import org.emsionline.emsiweb.domain.ChurchOrgDetailKey;
import org.emsionline.emsiweb.repository.ChurchRepository;
import org.emsionline.emsiweb.service.ChurchOrgService;
import org.emsionline.emsiweb.service.ChurchService;
import org.emsionline.emsiweb.web.admin.form.ChurchDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchListDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchOrgDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchOrgListDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@RequestMapping("/admin/church")
@Controller

public class ChurchAdminController {
	
	// TODO: Do a lookup instead of hardcoding to id 1
	public static final Long CEMI_CHURCH_ORG_ID = new Long(1);
		
	final Logger logger = LoggerFactory.getLogger(ChurchAdminController.class);

	@Autowired
	private ChurchOrgService churchOrgService;
	
	@Autowired
	private ChurchService churchService;
	
	@Autowired
	private EntityManagerFactory emf; 	
	
	@Autowired
	private ChurchRepository churchRepository;
	
	/*
	@ModelAttribute
	public ChurchOrg getChurchOrg(@PathVariable(value="churchOrgId") Long churchOrgId) {
		logger.info("GG: churchOrgId=" + churchOrgId);
		ChurchOrg org = churchOrgService.findById(churchOrgId);
		
		if (org != null) {
			logger.info("GG: " + org.getChurchOrgPath());
		
		}
		else {
			logger.info("GG: org is NULL");
		}
		
		return org;
	}	*/
	
	/*
	@ModelAttribute
	public Church getChurch(@PathVariable(value="churchId") Long churchId) {
		logger.info("GG: churchId=" + churchId);
		Church church = churchService.findById(churchId);
		
		if (church != null) {
			logger.info("GG: " + church.getChurchPath());
		
		}
		else {
			logger.info("GG: church is NULL");
		}
		
		return church;
	}		*/
	
	@RequestMapping(method = RequestMethod.GET)
	public String list(HttpServletRequest req, Model uiModel) {
		ChurchOrg org = churchOrgService.findById(CEMI_CHURCH_ORG_ID);
		
		logger.info(org.getChurchOrgPath());
		
		uiModel.addAttribute("org",org);
		
		//logger.info("size=" + org.getChurchOrgs().size());
		
		Map<ChurchOrgDetailKey, ChurchOrgDetail> details = org.getChurchOrgDetails();
		for (ChurchOrgDetailKey key : details.keySet()) {
			logger.info(key.toString() + ": " + details.get(key).getValue());
			
		}
		
		return "admin/church/list";
	}

	


	
	

	/*
	@RequestMapping(method = RequestMethod.GET, value = "/{churchId}", params = "edit")
	public String editChurch(@PathVariable(value="churchId") Long churchId, Model uiModel) {

		logger.info("*** editChurch ***");
		logger.info("churchId=" + churchId);

		
		return "admin/church/edit";

	}	*/
}
