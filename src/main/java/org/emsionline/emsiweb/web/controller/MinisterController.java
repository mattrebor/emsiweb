package org.emsionline.emsiweb.web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.emsionline.emsiweb.domain.minister.Minister;
import org.emsionline.emsiweb.domain.minister.MinisterDetail;
import org.emsionline.emsiweb.domain.minister.MinisterDetailKey;
import org.emsionline.emsiweb.domain.minister.MinisterDetailPK;
import org.emsionline.emsiweb.service.minister.MinisterService;
import org.emsionline.emsiweb.web.controller.helper.MinisterForm;
import org.emsionline.emsiweb.web.controller.helper.MinisterListItem;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@SessionAttributes({"minister", "keyList"})
public class MinisterController {
	
	final Logger logger = LoggerFactory.getLogger(MinisterController.class);
	
	@Autowired
	private MinisterService ministerService;
	
	
	@ModelAttribute("minister")
	public MinisterForm getMinister(HttpSession session) {
		logger.debug("instantiating a new MinisterForm obj");
		List<String> languages = ministerService.getLanguages();
		MinisterForm minister = new MinisterForm(languages);
		return minister;
	}
	
	@ModelAttribute("keyList")
	public List<MinisterDetailKey> getMinisterDetailKeys(HttpSession session) {
		logger.debug("getting the keyList");
		List<MinisterDetailKey> keyList = ministerService.findAllMinisterDetailKeys(); 
		return keyList;
	}
	
	
	@RequestMapping("/minister/get/{id}")
	public String get(
			@PathVariable Integer id
			, @ModelAttribute("minister") MinisterForm minister
			, Model model
			) {
		
		Minister entity = ministerService.findOne(id);
		populateFormFromEntity(minister, entity);
		
		model.addAttribute("saveAction", "update");
		return "minister/detail";
	}
	
	
	@RequestMapping("/minister/update/{id}")
	public String update(
			@PathVariable Integer id
			, @ModelAttribute("minister") MinisterForm form
			, Model model
			) {
		
		// retrieve entity from database
		Minister entity = ministerService.findOne(id);
		populateEntityFromForm(entity, form);
		ministerService.save(entity);
		
		return "redirect:/minister/readonly/"+id;
	}
	
	
	@RequestMapping("/minister/addnew")
	public String addnew(
			@ModelAttribute("minister") MinisterForm minister
			, Model model
			) {
		minister.clear();
		minister.setId(0);
		model.addAttribute("saveAction", "create");
		return "minister/detail";
	}
	
	
	@RequestMapping("/minister/create/{id}")
	public String create(
			@PathVariable Integer id // we ignore this parameter.  kept here to keep jspx the same.
			, @ModelAttribute("minister") MinisterForm form
			, Model model
			) {
		
		Minister entity = new Minister();
		createEntityFromForm(entity, form);
		entity = ministerService.save(entity);
		
		return "redirect:/minister/readonly/"+entity.getMinisterId();
	}
	
	
	@RequestMapping("/minister/readonly/{id}")
	public String readonly(
			@PathVariable Integer id
			, @ModelAttribute("minister") MinisterForm form
			, Model model
			) {
		Minister entity = ministerService.findOne(id);
		populateFormFromEntity(form, entity);
		model.addAttribute("readonly", "true");
		model.addAttribute("saveAction", "none");
		
		return "minister/detail";
	}
	
	
	@RequestMapping("/ministers")
	public String list(Model model) {
		List<Minister> ministers = ministerService.findAllMinisters();
		List<MinisterListItem> ministerList = new ArrayList<MinisterListItem>();
		for (Minister m : ministers) {
			ministerList.add(new MinisterListItem(m));
		}
		model.addAttribute("ministerList", ministerList);
		return "minister/list";
	}
	
	
	private String getUserId() {
		return "todo"; // TODO
	}
	
	
	private void populateFormFromEntity(MinisterForm form, Minister entity) {
		for (MinisterDetail detail : entity.getMinisterDetails()) {
			form.getDetails().get(detail.getId().getLocale()).put(detail.getId().getMinisterDetailKey(), detail.getValue());
		}
	}
	
	// entity is an obj which is pre-existing in the database
	private void populateEntityFromForm(Minister entity, MinisterForm form) {
		Date now = new Date(System.currentTimeMillis());
		for (MinisterDetail detail : entity.getMinisterDetails()) {
			String value = form.getDetails()
					.get(detail.getId().getLocale())
					.get(detail.getId().getMinisterDetailKey());
			
			if (value != null) { value = value.trim(); }
			
			if (value != null && detail.getValue() != null) {
				if (value.equals(detail.getValue())) {
					// no change. don't do anything for this property
					continue;
				}
			}
			if (value == null && detail.getValue() == null) {
				// no change. don't do anything for this property
				continue;
			}
			
			detail.setValue(value);
			detail.setLastModDate(now);
			detail.setLastModBy(getUserId());
		}
	}
	
	
	// entity is brand new
	private void createEntityFromForm(Minister entity, MinisterForm form) {
		Date now = new Date(System.currentTimeMillis());
		String userId = getUserId();
		Integer ministerId = ministerService.getNextMinisterId();
		
		entity.setMinisterId(ministerId);
		entity.setEnabled(1);
		
		Set<MinisterDetail> ministerDetails = new HashSet<MinisterDetail>();
		
		for (String lang : form.getLanguages()) {
			List<MinisterDetailKey> keys = getMinisterDetailKeys(null);
			for (MinisterDetailKey key : keys) {
				MinisterDetail detail = new MinisterDetail();
				detail.setId(new MinisterDetailPK(ministerId, lang, key.getMinisterDetailKey()));
				detail.setValue(form.getDetails().get(lang).get(key.getMinisterDetailKey()));
				detail.setMinister(entity);
				detail.setLastModDate(now);
				detail.setLastModBy(userId);
				ministerDetails.add(detail);
			}
		}
		
		entity.setMinisterDetails(ministerDetails);
	}
}
