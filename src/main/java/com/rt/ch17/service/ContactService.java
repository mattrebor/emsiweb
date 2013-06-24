package com.rt.ch17.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.rt.ch17.domain.Contact;

public interface ContactService {

	public List<Contact> findAll();
	
	public Contact findById(Long id);
	
	public Contact save(Contact contact);
	
	public Page<Contact> findAllByPage(Pageable pageable);
}
