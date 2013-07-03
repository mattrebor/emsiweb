package org.emsionline.emsiweb.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SemiStaticPageController {
	
	final Logger logger = LoggerFactory.getLogger(SemiStaticPageController.class);
	
	@RequestMapping("/emsi/intro")
	public String emsiIntro(Model model) {
		return "emsi/intro";
	}
}
