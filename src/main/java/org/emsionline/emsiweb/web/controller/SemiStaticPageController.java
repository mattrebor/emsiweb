package org.emsionline.emsiweb.web.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SemiStaticPageController {
	
	final Logger logger = LoggerFactory.getLogger(SemiStaticPageController.class);
	
	@RequestMapping({"/emsi"})
	public String partialPathEMSI() {
		return "redirect:/emsi/intro";
	}
	
	@RequestMapping({"/ebi"})
	public String partialPathEBI() {
		return "redirect:/ebi/america";
	}
	
	@RequestMapping({"/ceom"})
	public String partialPathCEOM() {
		return "redirect:/ceom/intro";
	}
	
	@RequestMapping({"/emsi/*", "/ebi/*", "/ceom/*"})
	public String serveSemiStaticContent(
			Model model
			, HttpServletRequest request
			, Locale locale
			) {
		String[] pathElements = getPathElements(request.getServletPath());
		String lang = locale.getLanguage();
		StringBuilder strbld = new StringBuilder();
		strbld.append("semistatic").append("/")
			.append(pathElements[0]).append("/")
			.append(pathElements[1]).append("_").append(lang);
		return strbld.toString();
	}
	
	@RequestMapping({"/donate", "/contactus"})
	public String serveSemiStaticContentGlobal(
			Model model
			, HttpServletRequest request
			, Locale locale
			) {
		String[] pathElements = getPathElements(request.getServletPath());
		String lang = locale.getLanguage();
		StringBuilder strbld = new StringBuilder();
		strbld.append("semistatic").append("/global/")
			.append(pathElements[0]).append("_").append(lang);
		return strbld.toString();
	}
		
	
	private String[] getPathElements(String servletPath) {
		return StringUtils.split(servletPath, "/");
	}
}
