package org.emsionline.emsiweb.web.validator;

import org.emsionline.emsiweb.domain.orderform.CustomerInfo;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class CustInfoValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return CustomerInfo.class.equals(clazz);
	}
	/*
		firstname.required=Firstname is required
		lastname.required=Lastname is required
		address1.required=Street Address1 is required
		city.required=City is required
		state.province.required=State/Province is required
		zip.postalcode.required=Zip/Postal Code is required
		country.required=Country is required
		email.required=Email is required
	 */
	@Override
	public void validate(Object obj, Errors errors) {
		CustomerInfo custInfo = (CustomerInfo) obj;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname", "firstname.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastname", "lastname.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address1", "address1.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "city.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "stateProvince", "state.province.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "zipPostalCode", "zip.postalcode.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "countryCode", "country.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.required");
	}
}
