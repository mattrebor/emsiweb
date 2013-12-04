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


@RequestMapping("/admin/org")
@Controller

public class ChurchOrgAdminController {
	
		
	final Logger logger = LoggerFactory.getLogger(ChurchOrgAdminController.class);

	@Autowired
	private ChurchOrgService churchOrgService;
	
	@Autowired
	private ChurchOrgRepository churchOrgRepository;
	
	@Autowired
	private EntityManagerFactory emf; 
	
	@Autowired
	private ChurchService churchService;
	
	@Autowired
	private ChurchRepository churchRepository;	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		//binder.setValidator(new ChurchOrgFormValidator());
	}
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
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/{churchOrgId}", params = "edit")
	public String edit(ChurchOrg org, Model uiModel) {
		//logger.info("churchOrgId=" + churchOrgId);
		//ChurchOrg org = churchOrgService.findById(churchOrgId);
		
		// TODO: Handle org not found
		if (org != null) {
			logger.info(org.getChurchOrgPath());
		
			Map<String, Map<String, ChurchOrgDetail>> detailsMap = org.getChurchOrgDetailsMap();
		
		
			ChurchOrgForm orgForm = new ChurchOrgForm();
			orgForm.getName().put("en", detailsMap.get("menu_name").get("en").getValue());
			orgForm.getName().put("zh", detailsMap.get("menu_name").get("zh").getValue());
		
			//uiModel.addAttribute("org", org);
			uiModel.addAttribute("orgForm", orgForm);
		
			Map<ChurchOrgDetailKey, ChurchOrgDetail> details = org.getChurchOrgDetails();
			for (ChurchOrgDetailKey key : details.keySet()) {
				logger.info(key.toString() + ": " + details.get(key).getValue());
			
			}
		

			
			

			if (org.getChurchOrgs() != null && org.getChurchOrgs().size() > 0) {
				orgForm.setChildOrgs(org.getChurchOrgs());
			}
			else {
				orgForm.setChurches(org.getChurches());
			}
		}
		else {
			logger.info("org is NULL");
		}
		return "admin/org/edit";
	}
	
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchOrgId}", params = "edit")
	public String update(ChurchOrg org, @Valid ChurchOrgForm orgForm, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest, RedirectAttributes redirectAttributes) {
		logger.info("update: " + org.getChurchOrgPath());
		
		logger.info("bindingResult.hasErrors = " + bindingResult.hasErrors());

		// TODO: Handle org not found
		
		
		//bindingResult.
		
		logger.info(orgForm.getName().get("en"));
		logger.info(orgForm.getName().get("zh"));
		
		//uiModel.addAttribute("orgForm", orgForm);
		
		logger.info("Church Orgs from form");
		Map<Long, ChurchOrg> churchOrgMap = new HashMap<Long, ChurchOrg>();
		List<ChurchOrg> churchOrgs = orgForm.getChildOrgs();
		if (churchOrgs != null) {
			for (ChurchOrg churchOrg : churchOrgs) {
				logger.info(churchOrg.getChurchOrgId() + "|" + churchOrg.getChurchOrgPath() + "|" + churchOrg.getSortOrder());
				churchOrgMap.put(churchOrg.getChurchOrgId(), churchOrg);
			}
		}
		else {
			logger.info("Church Orgs is null");
		}
		
		
		logger.info("Churches from form");
		Map<Long, Church> churchMap = new HashMap<Long, Church>();
		List<Church> churches = orgForm.getChurches();
		if (churches != null) {
			for (Church church : churches) {
				logger.info(church.getChurchId() + "|" + church.getChurchPath() + "|" + church.getSortOrder());
				churchMap.put(church.getChurchId(), church);
			}
		}else {
			logger.info("Churches is null");
		}

		
		logger.info(org.getChurchOrgPath());
		
		ChurchOrgDetailKey key = new ChurchOrgDetailKey();
		key.setChurchOrgId(org.getChurchOrgId());
		key.setKey("menu_name");
		key.setLocale("en");
		
		ChurchOrgDetail dt = org.getChurchOrgDetails().get(key);
		dt.setValue(orgForm.getName().get("en"));
		
		key.setLocale("zh");
		dt = org.getChurchOrgDetails().get(key);
		dt.setValue(orgForm.getName().get("zh"));
		
		for (ChurchOrg churchOrg : org.getChurchOrgs()) {
			if (churchOrgMap.containsKey(churchOrg.getChurchOrgId())) {
				churchOrg.setSortOrder(churchOrgMap.get(churchOrg.getChurchOrgId()).getSortOrder());
			}
		}
		
		Comparator<ChurchOrg> bySortOrder = new Comparator<ChurchOrg>() { 
			public int compare(ChurchOrg left, ChurchOrg right) {
				return Ints.compare(left.getSortOrder(), right.getSortOrder());
			}
		};
		//Collections.sort(org.getChurchOrgs(),  bySortOrder);
		
		
		for (Church church : org.getChurches()) {
			if (churchMap.containsKey(church.getChurchId())) {
				church.setSortOrder(churchMap.get(church.getChurchId()).getSortOrder());
			}
		}
		
		churchOrgService.save(org);
		
		emf.getCache().evictAll();
		
		uiModel.asMap().clear();
		//uiModel.addAttribute("churchOrgId", org.getChurchOrgId());
		//return "admin/org/edit";
		
		return "redirect:/admin/org/" + org.getChurchOrgId() + "?edit";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/{churchOrgId}/childOrg", produces="application/json")
	public @ResponseBody ChurchOrgListDTO listChildOrgs(ChurchOrg org, Model uiModel) {
		
		logger.info("listChildOrgs");
		
		ChurchOrgListDTO listDTO = new ChurchOrgListDTO();
		listDTO.orgs = new ArrayList<ChurchOrgDTO>();
		
		// TODO: Handle org not found
		if (org != null) {
			logger.info(org.getChurchOrgPath());
		
			listDTO.page = 1;
			listDTO.total = 1;
			listDTO.records =  org.getChurchOrgs().size();
		
			for (ChurchOrg childOrg : org.getChurchOrgs()) {
				ChurchOrgDTO dto = new ChurchOrgDTO();
				dto.setId(childOrg.getChurchOrgId());
				dto.setChurchOrgPath(childOrg.getChurchOrgPath());
				dto.setSortOrder(childOrg.getSortOrder());
				Map<String, String> name = new HashMap<String, String>();
				name.put("en", childOrg.getChurchOrgDetailsMap().get("menu_name").get("en").getValue());
				name.put("zh", childOrg.getChurchOrgDetailsMap().get("menu_name").get("zh").getValue());
				dto.setName(name);
				
				listDTO.orgs.add(dto);
			}

			

		}
		else {
			logger.info("org is NULL");
		}
		return listDTO;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchOrgId}/childOrg", params = "edit", produces="text/plain")
	public @ResponseBody String saveChildOrg(ChurchOrg org, @RequestBody ChurchOrgDTO dto, Model uiModel) {

		logger.info("*** saveChildOrg ***");
		logger.info("org.path=" + org.getChurchOrgPath());
		logger.info("dto.id=" + dto.getId());
		logger.info("dto.sortOrder=" + dto.getSortOrder());
		logger.info("dto.name.en=" + dto.getName().get("en"));
		logger.info("dto.name.zh=" + dto.getName().get("zh"));
		
		ChurchOrg childOrg = churchOrgService.findById(dto.getId());
		// TODO: take of when the org is not found
		childOrg.setSortOrder(dto.getSortOrder());
		
		ChurchOrgDetailKey detailKey = new ChurchOrgDetailKey();
		detailKey.setChurchOrgId(childOrg.getChurchOrgId());
		detailKey.setKey("menu_name");
		detailKey.setLocale("en");
		childOrg.getChurchOrgDetails().get(detailKey).setValue(dto.getName().get("en"));
		
		detailKey.setLocale("zh");
		childOrg.getChurchOrgDetails().get(detailKey).setValue(dto.getName().get("zh"));
		churchOrgService.save(childOrg);
		
		emf.getCache().evictAll();

		
		return "Saved successfully";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchOrgId}/childOrg", params = "new", produces="text/plain")
	public @ResponseBody String createChildOrg(ChurchOrg org, @RequestBody ChurchOrgDTO dto, Model uiModel) {

		logger.info("*** createChildOrg ***");
		//logger.info("org.path=" + org.getChurchOrgPath());
		logger.info("dto.id=" + dto.getId());
		logger.info("dto.sortOrder=" + dto.getSortOrder());
		logger.info("dto.name.en=" + dto.getName().get("en"));
		logger.info("dto.name.zh=" + dto.getName().get("zh"));
		
		
		ChurchOrg childOrg = new ChurchOrg();
		org.getChurchOrgs().add(childOrg);
		childOrg.setChurchOrgPath("xxxx");
		childOrg.setSortOrder(dto.getSortOrder());
		childOrg.setChurchOrgDetails(new HashMap<ChurchOrgDetailKey, ChurchOrgDetail>());
		churchOrgService.save(childOrg);
		logger.info("childOrg.churchOrgId" + childOrg.getChurchOrgId());

		
		ChurchOrgDetailKey detailKeyEN = new ChurchOrgDetailKey();
		detailKeyEN.setChurchOrgId(childOrg.getChurchOrgId());
		detailKeyEN.setKey("menu_name");
		detailKeyEN.setLocale("en");
		
		ChurchOrgDetail detail = new ChurchOrgDetail();
		detail.setId(detailKeyEN);
		detail.setValue(dto.getName().get("en"));
		childOrg.getChurchOrgDetails().put(detailKeyEN, detail);
		
		ChurchOrgDetailKey detailKeyZH = new ChurchOrgDetailKey();
		detailKeyZH.setChurchOrgId(childOrg.getChurchOrgId());
		detailKeyZH.setKey("menu_name");
		detailKeyZH.setLocale("zh");
		
		detail = new ChurchOrgDetail();
		detail.setId(detailKeyZH);
		detail.setValue(dto.getName().get("zh"));
		childOrg.getChurchOrgDetails().put(detailKeyZH, detail);
		

		churchOrgService.save(childOrg);

		logger.info("childOrg.churchOrgId" + childOrg.getChurchOrgId());

		
		emf.getCache().evictAll();

		
		return "Created successfully";
	}
	
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchOrgId}/childOrg", params = "delete", produces="text/plain")
	public @ResponseBody String deleteChildOrg(ChurchOrg org, @RequestParam(value="id", required=true) Long childOrgId, Model uiModel) {

		logger.info("*** deleteChildOrg ***");
		logger.info("org.path=" + org.getChurchOrgPath());
		logger.info("childOrgId=" + childOrgId);

		ChurchOrg childOrg = churchOrgService.findById(childOrgId);

		
		logger.info("Is it contained in the parent's org: " + org.getChurchOrgs().contains(childOrg));
		boolean rc = org.getChurchOrgs().remove(childOrg);
		logger.info("Deleted from parent's org: " + rc);

		
		churchOrgRepository.delete(childOrgId);
		
		emf.getCache().evictAll();
		
		return "Deleted successfully";

	}	
	
	@RequestMapping(method = RequestMethod.GET, value = "/{churchOrgId}/churches", produces="application/json")
	public @ResponseBody ChurchListDTO listChurches(ChurchOrg org, Model uiModel) {
		
		logger.info("*** listChurches ***");
		
		ChurchListDTO listDTO = new ChurchListDTO();
		listDTO.churches = new ArrayList<ChurchDTO>();
		
		// TODO: Handle org not found
		if (org != null) {
			logger.info(org.getChurchOrgPath());
		
			listDTO.page = 1;
			listDTO.total = 1;
			listDTO.records =  org.getChurches().size();
		
			for (Church church : org.getChurches()) {
				ChurchDTO dto = new ChurchDTO();
				dto.setChurchId(church.getChurchId());
				dto.setChurchPath(church.getChurchPath());
				dto.setSortOrder(church.getSortOrder());
				
				Map<String, String> name = new HashMap<String, String>();
				name.put("en", church.getChurchDetailsMap().get("menu_name").get("en").getValue());
				name.put("zh", church.getChurchDetailsMap().get("menu_name").get("zh").getValue());
				dto.setName(name);
				
				listDTO.churches.add(dto);
			}

			

		}
		else {
			logger.info("org is NULL");
		}
		return listDTO;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/{churchOrgId}/church", params = "edit", produces="text/plain")
	public @ResponseBody String saveChurch(ChurchOrg org, @RequestBody ChurchDTO dto, Model uiModel) {

		logger.info("*** saveChurch ***");
		logger.info("org.path=" + org.getChurchOrgPath());
		logger.info("dto.id=" + dto.getChurchId());
		logger.info("dto.sortOrder=" + dto.getSortOrder());
		logger.info("dto.name.en=" + dto.getName().get("en"));
		logger.info("dto.name.zh=" + dto.getName().get("zh"));
		
		Church church = churchService.findById(dto.getChurchId());
		// TODO: take of when the org is not found
		church.setSortOrder(dto.getSortOrder());
		
		churchService.save(church);

		
		emf.getCache().evictAll();

		
		return "Saved successfully";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchOrgId}/church", params = "new", produces="text/plain")
	public @ResponseBody String createChurch(ChurchOrg org, @RequestBody ChurchDTO dto, Model uiModel) {

		logger.info("*** createChurch ***");
		//logger.info("org.path=" + org.getChurchOrgPath());
		logger.info("dto.id=" + dto.getChurchId());
		logger.info("dto.sortOrder=" + dto.getSortOrder());
		logger.info("dto.churchPath=" + dto.getChurchPath());
		logger.info("dto.name.en=" + dto.getName().get("en"));
		logger.info("dto.name.zh=" + dto.getName().get("zh"));
		
		
		Church church = new Church();
		org.getChurches().add(church);
		church.setChurchPath(dto.getChurchPath());
		church.setSortOrder(dto.getSortOrder());
		church.setChurchDetails(new HashMap<ChurchDetailKey, ChurchDetail>());
		churchService.save(church);
		logger.info("church.churchId" + church.getChurchId());

		churchOrgService.save(org);

		
		ChurchDetailKey detailKeyEN = new ChurchDetailKey();
		detailKeyEN.setChurchId(church.getChurchId());
		detailKeyEN.setKey("menu_name");
		detailKeyEN.setLocale("en");
		
		ChurchDetail detail = new ChurchDetail();
		detail.setId(detailKeyEN);
		detail.setValue(dto.getName().get("en"));
		church.getChurchDetails().put(detailKeyEN, detail);
		
		ChurchDetailKey detailKeyZH = new ChurchDetailKey();
		detailKeyZH.setChurchId(church.getChurchId());
		detailKeyZH.setKey("menu_name");
		detailKeyZH.setLocale("zh");
		
		detail = new ChurchDetail();
		detail.setId(detailKeyZH);
		detail.setValue(dto.getName().get("zh"));
		church.getChurchDetails().put(detailKeyZH, detail);
		
		
		// Content
		church.setChurchContent(new HashMap<ChurchContentKey, ChurchContent>());
		
		ChurchContentKey contentKeyEN = new ChurchContentKey();
		contentKeyEN.setChurchId(church.getChurchId());
		contentKeyEN.setLocale("en");
		contentKeyEN.setPageId("intro");
		
		ChurchContent contentEN = new ChurchContent();
		contentEN.setId(contentKeyEN);
		contentEN.setTitle(dto.getName().get("en"));
		contentEN.setBody("Coming soon...");
		
		church.getChurchContent().put(contentKeyEN, contentEN);
		
		ChurchContentKey contentKeyZH = new ChurchContentKey();
		contentKeyZH.setChurchId(church.getChurchId());
		contentKeyZH.setLocale("zh");
		contentKeyZH.setPageId("intro");
		
		ChurchContent contentZH = new ChurchContent();
		contentZH.setId(contentKeyZH);
		contentZH.setTitle(dto.getName().get("zh"));
		contentZH.setBody("Coming soon...");
		
		church.getChurchContent().put(contentKeyZH, contentZH);		

		churchService.save(church);

		logger.info("church.churchId" + church.getChurchId());

		
		emf.getCache().evictAll();

		
		return "Created successfully";
	}
	
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchOrgId}/church", params = "delete", produces="text/plain")
	public @ResponseBody String deleteChurch(ChurchOrg org, @RequestParam(value="id", required=true) Long churchId, Model uiModel) {

		logger.info("*** deleteChurch ***");
		logger.info("org.path=" + org.getChurchOrgPath());
		logger.info("churchId=" + churchId);

		Church church = churchService.findById(churchId);
		logger.info("church.churchPath=" + church.getChurchPath());

		
		logger.info("Is it contained in the parent's org: " + org.getChurches().contains(church));

		churchRepository.delete(churchId);
		
		emf.getCache().evictAll();
		
		return "Deleted successfully";

	}		
}

