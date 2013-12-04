package org.emsionline.emsiweb.web.admin.form;

import org.emsionline.emsiweb.domain.ChurchOrg;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ChurchOrgFormValidator implements Validator {

	final Logger logger = LoggerFactory.getLogger(ChurchOrgFormValidator.class);
	
	@Override
	public boolean supports(Class<?> clazz) {
		logger.info("supports " + clazz.toString());

		return (ChurchOrgForm.class).isAssignableFrom(clazz) || (ChurchOrg.class).isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		logger.info("validate start");
		logger.info("zz " + target.getClass().toString());
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name['en']", "name.empty");
		//errors.reject("name['en']", "name.empty");
		logger.info("validate end");
	}

}
