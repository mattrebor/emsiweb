package com.rt.ch17.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.rt.ch17.domain.Contact;

public interface ContactRespository extends PagingAndSortingRepository<Contact, Long> {

}
