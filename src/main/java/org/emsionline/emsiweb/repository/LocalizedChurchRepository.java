package org.emsionline.emsiweb.repository;

import java.util.List;

import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.emsionline.emsiweb.domain.LocalizedChurchKey;
import org.springframework.data.repository.PagingAndSortingRepository;


public interface LocalizedChurchRepository extends PagingAndSortingRepository<LocalizedChurch, LocalizedChurchKey> {
	
	public List<LocalizedChurch> findAllById_Locale(String locale);

	public LocalizedChurch findById_LocaleAndChurchPath(String locale, String churchPath); 
}
