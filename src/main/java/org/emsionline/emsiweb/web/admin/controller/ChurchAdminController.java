package org.emsionline.emsiweb.web.admin.controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.emsionline.emsiweb.repository.ChurchContentRepository;
import org.emsionline.emsiweb.repository.ChurchRepository;
import org.emsionline.emsiweb.service.ChurchContentService;
import org.emsionline.emsiweb.service.ChurchOrgService;
import org.emsionline.emsiweb.service.ChurchService;
import org.emsionline.emsiweb.web.admin.form.ChurchContentDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchContentListDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchForm;
import org.emsionline.emsiweb.web.admin.form.ChurchListDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchOrgDTO;
import org.emsionline.emsiweb.web.admin.form.ChurchOrgForm;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.primitives.Ints;


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
	private ChurchContentService churchContentService;
	
	@Autowired
	private ChurchContentRepository churchContentRepository;
	
	@Autowired
	private EntityManagerFactory emf; 	
	
	@Autowired
	private ChurchRepository churchRepository;
	

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
	}		
	

	

	
	@RequestMapping(method = RequestMethod.GET, value = "/{churchId}", params = "edit")
	public String editChurch(Church church, Model uiModel) {

		logger.info("*** editChurch ***");
		logger.info("church.churchId=" + church.getChurchId());
		logger.info("church.churchPath=" + church.getChurchPath());
		
		Map<String, Map<String, ChurchDetail>> detailsMap = church.getChurchDetailsMap();

		ChurchForm churchForm = new ChurchForm();
		churchForm.getName().put("en", detailsMap.get("menu_name").get("en").getValue());
		churchForm.getName().put("zh", detailsMap.get("menu_name").get("zh").getValue());
		churchForm.setAddress(church.getAddress());
		churchForm.setLongitude(church.getLongitude());
		churchForm.setLatitude(church.getLatitude());
		
		uiModel.addAttribute("churchForm", churchForm);
		
		return "admin/church/edit";

	}
	
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchId}", params = "edit")
	public String updateChurch(Church church, @Valid ChurchForm churchForm, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest, RedirectAttributes redirectAttributes) {
		logger.info("updateChurch: " + church.getChurchPath());
		
		logger.info("bindingResult.hasErrors = " + bindingResult.hasErrors());

		// TODO: Handle church not found
		
		
		//bindingResult.
		
		logger.info(churchForm.getName().get("en"));
		logger.info(churchForm.getName().get("zh"));
		
		//uiModel.addAttribute("orgForm", orgForm);
		

		


		
		
		ChurchDetailKey key = new ChurchDetailKey();
		key.setChurchId(church.getChurchId());
		key.setKey("menu_name");
		key.setLocale("en");
		
		ChurchDetail dt = church.getChurchDetails().get(key);
		dt.setValue(churchForm.getName().get("en"));
		
		key.setLocale("zh");
		dt = church.getChurchDetails().get(key);
		dt.setValue(churchForm.getName().get("zh"));
		

		church.setAddress(churchForm.getAddress());
		church.setLongitude(churchForm.getLongitude());
		church.setLatitude(churchForm.getLatitude());

		
		churchService.save(church);
		
		emf.getCache().evictAll();
		
		uiModel.asMap().clear();
		//uiModel.addAttribute("churchOrgId", org.getChurchOrgId());
		//return "admin/org/edit";
		
		return "redirect:/admin/church/" + church.getChurchId() + "?edit";
	}	
	
	@RequestMapping(method = RequestMethod.GET, value = "/{churchId}/content", produces="application/json")
	public @ResponseBody ChurchContentListDTO listContent(Church church, Model uiModel) {
		
		logger.info("listContent");
		
		ChurchContentListDTO listDTO = new ChurchContentListDTO();
		listDTO.contents = new ArrayList<ChurchContentDTO>();
		
		// TODO: Handle org not found
		if (church != null) {
			logger.info(church.getChurchPath());
		
			listDTO.page = 1;
			listDTO.total = 1;
			listDTO.records =  church.getChurchContent().size();
		
			for (ChurchContent content : church.getChurchContent().values()) {
				ChurchContentDTO dto = new ChurchContentDTO();
				dto.setChurchId(content.getId().getChurchId());
				dto.setLocale(content.getId().getLocale());
				dto.setPageId(content.getId().getPageId());
				dto.setTitle(content.getTitle());

				
				listDTO.contents.add(dto);
			}

			

		}
		else {
			logger.info("org is NULL");
		}

		return listDTO;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchId}/content", params = "edit", produces="text/plain")
	public @ResponseBody String saveContent(Church church, @RequestBody ChurchContentDTO dto, Model uiModel) {

		logger.info("*** saveContent ***");
		logger.info("org.path=" + church.getChurchPath());
		logger.info("dto.id=" + dto.getChurchId());
		logger.info("dto.pageId=" + dto.getPageId());
		logger.info("dto.locale=" + dto.getLocale());
		logger.info("dto.title=" + dto.getTitle());
		
		// TODO: What if dto.churchId != church.churchId
		ChurchContentKey key = new ChurchContentKey();
		key.setChurchId(church.getChurchId());
		key.setPageId(dto.getPageId());
		key.setLocale(dto.getLocale());
		
		ChurchContent content = churchContentService.findById(key);
		
		content.setTitle(dto.getTitle());
		
		churchContentService.save(content);

		
		emf.getCache().evictAll();

		
		return "Saved successfully";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchId}/content", params = "new", produces="text/plain")
	public @ResponseBody String createContent(Church church, @RequestBody ChurchContentDTO dto, Model uiModel) {

		logger.info("*** createContent ***");
		logger.info("org.path=" + church.getChurchPath());
		logger.info("dto.id=" + dto.getChurchId());
		logger.info("dto.pageId=" + dto.getPageId());
		logger.info("dto.locale=" + dto.getLocale());
		logger.info("dto.title=" + dto.getTitle());
		
		// TODO: What if dto.churchId != church.churchId
		ChurchContentKey key = new ChurchContentKey();
		key.setChurchId(church.getChurchId());
		key.setPageId(dto.getPageId());
		key.setLocale(dto.getLocale());
		
		ChurchContent content = new ChurchContent();
		
		content.setId(key);
		content.setTitle(dto.getTitle());
		content.setBody("Coming soon..."); // TODO: Need to load up a template here
		
		churchContentService.save(content);

		
		emf.getCache().evictAll();

		
		return "Saved successfully";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/{churchId}/content", params = "delete", produces="text/plain")
	public @ResponseBody String deleteContent(Church church, @RequestParam(value="id") String id, Model uiModel) {

		logger.info("*** deleteContent ***");
		logger.info("id=" + id);

		String arr[] = id.split("\\|");
		logger.info("arr[0]=" + arr[0]);
		logger.info("arr[1]=" + arr[1]);
		logger.info("arr[2]=" + arr[2]);

		ChurchContentKey key = new ChurchContentKey();
		key.setChurchId(new Long(arr[0]));
		key.setPageId(arr[1]);
		key.setLocale(arr[2]);
		

		churchContentRepository.delete(key);
		
		emf.getCache().evictAll();

		
		return "Deleted successfully";
	}	
}
