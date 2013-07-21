package org.emsionline.emsiweb.repository;

import java.util.List;

import org.emsionline.emsiweb.domain.ChurchContent;
import org.emsionline.emsiweb.domain.ChurchContentKey;
import org.springframework.data.repository.PagingAndSortingRepository;


public interface ChurchContentRepository extends PagingAndSortingRepository<ChurchContent, ChurchContentKey> {

	public List< ChurchContent> findById_ChurchIdAndId_Locale(Long church_id, String locale);
}
