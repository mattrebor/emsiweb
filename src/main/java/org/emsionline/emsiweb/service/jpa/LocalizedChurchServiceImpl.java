package org.emsionline.emsiweb.service.jpa;

import java.util.List;

import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.emsionline.emsiweb.domain.LocalizedChurchKey;
import org.emsionline.emsiweb.repository.LocalizedChurchRepository;
import org.emsionline.emsiweb.service.LocalizedChurchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;

@Service("jpaLocalizedChurchService")
@Transactional
public class LocalizedChurchServiceImpl implements LocalizedChurchService {


	
	@Autowired
	private LocalizedChurchRepository churchRepository;
	
	
	@Transactional(readOnly = true)
	public List<LocalizedChurch> findAll() {
		return Lists.newArrayList(churchRepository.findAll());
	}

	@Transactional(readOnly = true)
	public LocalizedChurch findById(LocalizedChurchKey id) {
		return churchRepository.findOne(id);
	}

	@Transactional(readOnly = true)
	public Page<LocalizedChurch> findAllByPage(Pageable pageable) {
		return churchRepository.findAll(pageable);
	}

	@Transactional(readOnly = true)
	public List<LocalizedChurch> findAllByLocale(String locale) {
		return churchRepository.findAllById_Locale(locale);
	}

	@Transactional(readOnly = true)
	public LocalizedChurch findById_LocaleAndChurchPath(String locale, String churchPath) {
		return churchRepository.findById_LocaleAndChurchPath(locale, churchPath);
	}


}
