package org.emsionline.emsiweb.web.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.support.RequestContextUtils;

@RequestMapping("/home")
@Controller
public class HomeController {
	
	final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(method = RequestMethod.GET) 
	public String home(HttpServletRequest req, Model uiModel) { 
		Locale locale = RequestContextUtils.getLocale(req);

		String lang = locale.getLanguage();
		if (!(lang.equals("en") || lang.equals("zh"))) {
			lang = "en";
		}
		return "home_" + lang; 
	}
}
