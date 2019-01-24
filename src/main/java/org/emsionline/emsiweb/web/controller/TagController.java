package org.emsionline.emsiweb.web.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletContext;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TagController {

    @Autowired
    ServletContext context;

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/tag", method = RequestMethod.GET)
    public String tag(Locale locale, Model model) {
        String tag_name = context.getInitParameter("tag_name");
        if (tag_name != null) {

            logger.info("tag_name |" + tag_name + "|");
            model.addAttribute("tag_name", tag_name);
        }
        else {
            tag_name = "NOT DEFINED";
        }

        return "tag";
    }

}

