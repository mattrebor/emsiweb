package org.emsionline.emsiweb.domain.orderform;

import java.io.Serializable;


public class CustomerInfo implements Serializable {
	
	private static final long serialVersionUID = -6510585663300270049L;
	
	private String prefix;
	private String firstname;
	private String lastname;
	private String address1;
	private String address2;
	private String city;
	private String stateProvince;
	private String zipPostalCode;
	private String countryCode;
	private String email;
	private String churchName;
	private java.sql.Date orderDate;
	
	
	
	public String getPrefix() { return prefix; }
	public void setPrefix(String prefix) { this.prefix = prefix; }
	
	public String getFirstname() { return firstname; }
	public void setFirstname(String firstname) { this.firstname = firstname; }
	
	public String getLastname() { return lastname; }
	public void setLastname(String lastname) { this.lastname = lastname; }
	
	public String getAddress1() { return address1; }
	public void setAddress1(String address1) { this.address1 = address1; }
	
	public String getAddress2() { return address2; }
	public void setAddress2(String address2) { this.address2 = address2; }
	
	public String getCity() { return city; }
	public void setCity(String city) { this.city = city; }
	
	public String getStateProvince() { return stateProvince; }
	public void setStateProvince(String stateProvince) { this.stateProvince = stateProvince; }
	
	public String getZipPostalCode() { return zipPostalCode; }
	public void setZipPostalCode(String zipPostalCode) { this.zipPostalCode = zipPostalCode; }
	
	public String getCountryCode() { return countryCode; }
	public void setCountryCode(String countryCode) { this.countryCode = countryCode; }
	
	public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }
	
	public String getChurchName() { return churchName; }
	public void setChurchName(String churchName) { this.churchName = churchName; }
	
	public java.sql.Date getOrderDate() { return orderDate; }
	public void setOrderDate(java.sql.Date orderDate) { this.orderDate = orderDate; }
}
