package org.emsionline.emsiweb.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.emsionline.emsiweb.domain.ChurchContent;
import org.emsionline.emsiweb.domain.ChurchContentKey;
import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.emsionline.emsiweb.domain.LocalizedChurchKey;
import org.emsionline.emsiweb.domain.LocalizedChurchOrg;
import org.emsionline.emsiweb.domain.LocalizedChurchOrgKey;
import org.emsionline.emsiweb.service.ChurchContentService;
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
		
		String userAgent = req.getHeader("User-Agent");
		
		boolean css3TreeSupport = true;
		if (userAgent.contains("MSIE 7.0") || userAgent.contains("MSIE 8.0")) {
			css3TreeSupport = false;
		}
		uiModel.addAttribute("css3TreeSupport", css3TreeSupport);

		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(CEMI_CHURCH_ORG_ID), locale.getLanguage()));
		uiModel.addAttribute("church_org", church_org);
		
		
		
		//List<LocalizedChurch> churches = churchService.findAll();
		//uiModel.addAttribute("churches", churches);
		//logger.info("No. of churches: " + churches.size());
		return "cemi/list";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String showDefault(HttpServletRequest req, @PathVariable("id") Long id, Model uiModel) {
		return show(req, id, "intro", uiModel);
	
	}
	
	@RequestMapping(value = "/{id}/{page_id}", method = RequestMethod.GET)
	public String show(HttpServletRequest req, @PathVariable("id") Long id, @PathVariable("page_id") String page_id, Model uiModel) {

		String userAgent = req.getHeader("User-Agent");

		boolean css3TreeSupport = true;
		if (userAgent.contains("MSIE 7.0") || userAgent.contains("MSIE 8.0")) {
			css3TreeSupport = false;
		}
		uiModel.addAttribute("css3TreeSupport", css3TreeSupport);
		
		
		Locale locale = RequestContextUtils.getLocale(req);

		
		
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(CEMI_CHURCH_ORG_ID), locale.getLanguage()));
		uiModel.addAttribute("church_org", church_org);

		LocalizedChurch church = churchService.findById(new LocalizedChurchKey(new Long(id), locale.getLanguage()));
		uiModel.addAttribute("church", church);
		
		Map<String, String> churchHierarchy = retrieveChurchHierarchy(church);
		uiModel.addAttribute("churchHierarchy", churchHierarchy);
		
		ChurchContent content = churchContentService.findById(new ChurchContentKey(new Long(id), locale.getLanguage(), page_id));
		uiModel.addAttribute("content", content);

		
		List<ChurchContent> contentList = churchContentService.findById_ChurchIdAndId_Locale(new Long(id), locale.getLanguage());
		//uiModel.addAttribute("contentList", contentList);
		Map<String, ChurchContent> contentMap = new HashMap<String, ChurchContent>();

		for (ChurchContent c : contentList) {
			contentMap.put(c.getId().getPageId(), c);
			//logger.info("|" + c.getId().getPageId() + "| " + c.getTitle());
		}
		uiModel.addAttribute("contentMap", contentMap);

		
		
		
		return "cemi/show";
	}

	private Map<String, String> retrieveChurchHierarchy(LocalizedChurch church) {
		
		Map<String, String> hier = new HashMap<String, String>();

		if (church != null) {
			hier.put(church.getChurchPath(), church.getChurchPath());
		
			for (LocalizedChurchOrg org = church.getParentOrg(); org != null; org = org.getParentOrg()) {
				hier.put(org.getChurchOrgPath(), org.getChurchOrgPath());
			}
		}
		
		return hier;
	}

	
	
}
