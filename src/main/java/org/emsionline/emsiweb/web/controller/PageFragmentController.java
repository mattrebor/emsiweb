package org.emsionline.emsiweb.web.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import javax.validation.Valid;

import org.emsionline.emsiweb.domain.PageFragment;
import org.emsionline.emsiweb.service.PageFragmentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import com.rt.ch17.web.form.ContactGrid;
//import com.rt.ch17.web.form.Message;
//import com.rt.ch17.web.util.UrlUtil;

@RequestMapping("/page")
@Controller
public class PageFragmentController {

	final Logger logger = LoggerFactory.getLogger(PageFragmentController.class);
	
	@Autowired
	private PageFragmentService pageFragmentService;
	
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(method = RequestMethod.GET) 
	public String list(Model uiModel) { 
		logger.info("Listing page fragments");
		List<PageFragment> pageFragments = pageFragmentService.findAll(); 
		uiModel.addAttribute("pageFragments", pageFragments);
		logger.info("No. of page fragments: " + pageFragments.size());
		return "pages/list"; 
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String show(@PathVariable("id") Long id, Model uiModel) {
		
		PageFragment pageFragment = pageFragmentService.findById(id);
		uiModel.addAttribute("pageFragment", pageFragment);
		
		return "pages/show";
	}
	
	
	@RequestMapping(value ="/{id}", params="form", method = RequestMethod.POST)
	public String update(@Valid PageFragment pageFragment, BindingResult bindingResult, 
			Model uiModel, HttpServletRequest req, RedirectAttributes redirectAttrs, 
			Locale locale, @RequestParam(value="file", required=false) Part file) {
		logger.info("Updating page fragment");
		
		if (bindingResult.hasErrors()) {
//			uiModel.addAttribute("message", new Message("error", messageSource.getMessage("contact_save_fail", new Object[]{}, locale)));
			uiModel.addAttribute("contact", pageFragment);
			
			return "pages/update";
		}
		
		uiModel.asMap().clear();
		
//		redirectAttrs.addFlashAttribute("message", new Message("success", messageSource.getMessage("contact_save_success", new Object[]{}, locale)));
		
		logger.info("Page Fragment id: " + pageFragment.getPageFragmentId());
		
		
		/*
		if (file != null) {
			logger.info("File name: " + file.getName());
			logger.info("File size: " + file.getSize());
			logger.info("File content type: " + file.getContentType());
			byte[] fileContent = null;
			
			try {
				InputStream is = file.getInputStream();
				if (is == null) {
					logger.info("File inputstream is null");
				}
				
				fileContent = IOUtils.toByteArray(is);
				contact.setPhoto(fileContent);
			}
			catch (IOException ioEx) {
				logger.error("Error saving uploaded file", ioEx);
			}
			
			contact.setPhoto(fileContent);
		}
		*/
		
		pageFragmentService.save(pageFragment);
		
		return "redirect:/page/" /*+ UrlUtil.encodeUrlPathSegment(pageFragment.getPageFragmentId().toString(), req)*/;
		
	}
	
	
	@RequestMapping(value ="/{id}", params="form", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id, Model uiModel) {
		uiModel.addAttribute("pageFragment", pageFragmentService.findById(id));
		return "pages/update";
	}
	
	
	@RequestMapping(params="form", method = RequestMethod.POST)
	public String create(@Valid PageFragment pageFragment, BindingResult bindingResult, 
			Model uiModel, HttpServletRequest req, RedirectAttributes redirectAttrs, 
			Locale locale, @RequestParam(value="file", required=false) Part file) {
		
		logger.info("Creating contact");
		
		if (bindingResult.hasErrors()) {
//			uiModel.addAttribute("message", new Message("error", messageSource.getMessage("contact_save_fail", new Object[]{}, locale)));
			uiModel.addAttribute("contact", pageFragment);
			
			return "pages/create";
		}
		
		uiModel.asMap().clear();
		
//		redirectAttrs.addFlashAttribute("message", new Message("success", messageSource.getMessage("contact_save_success", new Object[]{}, locale)));
		
		logger.info("Page Fragment id: " + pageFragment.getPageFragmentId());
		/*
		if (file != null) {
			logger.info("File name: " + file.getName());
			logger.info("File size: " + file.getSize());
			logger.info("File content type: " + file.getContentType());
			byte[] fileContent = null;
			
			try {
				InputStream is = file.getInputStream();
				if (is == null) {
					logger.info("File inputstream is null");
				}
				
				fileContent = IOUtils.toByteArray(is);
				contact.setPhoto(fileContent);
			}
			catch (IOException ioEx) {
				logger.error("Error saving uploaded file", ioEx);
			}
			
			contact.setPhoto(fileContent);
		}
		*/
		
		pageFragmentService.save(pageFragment);
		
	
		return "redirect:/page/" /*+ UrlUtil.encodeUrlPathSegment(pageFragment.getPageFragmentId().toString(), req)*/;
		
	}	
	
	
	@RequestMapping(params="form", method = RequestMethod.GET)
	public String createForm(Model uiModel) {
		PageFragment pageFragment = new PageFragment();
		uiModel.addAttribute("pageFragment", pageFragment);
		return "pages/create";
	}
	
	
	/*
	@RequestMapping(value = "/listgrid", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ContactGrid listGrid(@RequestParam(value = "page", required = false) Integer page,
			@RequestParam(value = "rows", required = false) Integer rows,
			@RequestParam(value = "sidx", required = false) String sortBy,
			@RequestParam(value = "sord", required = false) String order) {
		
		logger.info("Listing contacts for grid with page: {}, rows: {}, sort: {}, order: {}", page, rows);
		logger.info("Listing contacts for grid with sort: {}, order: {}", sortBy, order);
		
		Sort sort = null;
		String orderBy = sortBy;
		if (orderBy != null && orderBy.equals("birthDateString"))
			orderBy = "birthDate";

		if (orderBy != null && order != null) {
			if (order.equals("desc")) {
				sort = new Sort(Sort.Direction.DESC, orderBy);
			}
			else {
				sort = new Sort(Sort.Direction.ASC, orderBy);

			}
		}
		
		// Constructs page request for current page
		// Note: page number for Spring Data JPA starts with 0, while jqGrid starts with 1 
		
		PageRequest pageRequest = null;
		if (sort != null) {
			pageRequest = new PageRequest(page - 1, rows, sort);
		} else {
			pageRequest = new PageRequest(page - 1, rows);
		}
		Page<PageFragment> contactPage = pageFragmentService.findAllByPage(pageRequest);
		// Construct the grid data that will return as JSON data 
		ContactGrid contactGrid = new ContactGrid();
		contactGrid.setCurrentPage(contactPage.getNumber() + 1); 
		contactGrid.setTotalPages(contactPage.getTotalPages()); 
		contactGrid.setTotalRecords(contactPage.getTotalElements());
		//contactGrid.setContactData(Lists.newArrayList(contactPage.iterator()));
		
		return contactGrid;
	}
	*/
	
	/****
	@RequestMapping(value = "/photo/{id}", method = RequestMethod.GET)
	@ResponseBody
	public byte[] downloadPhoto(@PathVariable("id") Long id) {
		
		PageFragment contact = pageFragmentService.findById(id);
		
		if (contact.getPhoto() != null) {
			logger.info("Downloading photo for id: {} with size: {}", contact.getId(), contact.getPhoto().length);
		}
		
		return contact.getPhoto();
	}
	*****/
}
