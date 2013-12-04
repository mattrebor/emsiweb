package org.emsionline.emsiweb.web.admin.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchContent;
import org.emsionline.emsiweb.domain.ChurchContentKey;
import org.emsionline.emsiweb.domain.ChurchDetail;
import org.emsionline.emsiweb.domain.ChurchDetailKey;
import org.emsionline.emsiweb.domain.ChurchOrg;
import org.emsionline.emsiweb.domain.ChurchOrgDetail;
import org.emsionline.emsiweb.domain.ChurchOrgDetailKey;
import org.emsionline.emsiweb.repository.ChurchOrgRepository;
import org.emsionline.emsiweb.repository.ChurchRepository;
import org.emsionline.emsiweb.service.ChurchOrgService;
import org.emsionline.emsiweb.service.ChurchService;
import org.emsionline.emsiweb.web.admin.form.ChurchDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchListDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchOrgDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchOrgForm;
import org.emsionline.emsiweb.web.admin.form.ChurchOrgFormValidator;
import org.emsionline.emsiweb.web.admin.form.ChurchOrgListDTO;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Ordering;
import com.google.common.primitives.Ints;
import com.sun.mail.imap.Rights.Right;

import freemarker.template.utility.Collections12;


@RequestMapping("/admin/org/list")
@Controller

public class ChurchOrgListController {
	
		
	private static final Long CEMI_CHURCH_ORG_ID = new Long(1);;

	final Logger logger = LoggerFactory.getLogger(ChurchOrgListController.class);

	@Autowired
	private ChurchOrgService churchOrgService;
	

	

	
	@RequestMapping(method = RequestMethod.GET, value= "")
	public String list(Model uiModel) {
		
		ChurchOrg org = churchOrgService.findById(CEMI_CHURCH_ORG_ID);
		
		logger.info(org.getChurchOrgPath());
		
		uiModel.addAttribute("org",org);
		
		//logger.info("size=" + org.getChurchOrgs().size());
		
		Map<ChurchOrgDetailKey, ChurchOrgDetail> details = org.getChurchOrgDetails();
		for (ChurchOrgDetailKey key : details.keySet()) {
			logger.info(key.toString() + ": " + details.get(key).getValue());
			
		}
		
		return "admin/org/list";
		
	}
	
	
}

