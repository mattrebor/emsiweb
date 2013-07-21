package org.emsionline.emsiweb.repository;

import org.emsionline.emsiweb.domain.ChurchContent;
import org.emsionline.emsiweb.domain.ChurchContentKey;
import org.springframework.data.repository.PagingAndSortingRepository;


public interface ChurchContentRepository extends PagingAndSortingRepository<ChurchContent, ChurchContentKey> {

}
