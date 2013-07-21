package org.emsionline.emsiweb.service.jpa;

import java.util.List;

import org.emsionline.emsiweb.domain.LocalizedChurchOrg;
import org.emsionline.emsiweb.domain.LocalizedChurchOrgKey;
import org.emsionline.emsiweb.repository.LocalizedChurchOrgRepository;
import org.emsionline.emsiweb.service.LocalizedChurchOrgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;

@Service("jpaLocalizedChurchOrgService")
@Repository
@Transactional
public class LocalizedChurchOrgServiceImpl implements LocalizedChurchOrgService {


	@Autowired
	private LocalizedChurchOrgRepository churchOrgRepository;

	@Transactional(readOnly = true)
	public List<LocalizedChurchOrg> findAll() {
		return Lists.newArrayList(churchOrgRepository.findAll());
	}

	@Transactional(readOnly = true)
	public LocalizedChurchOrg findById(LocalizedChurchOrgKey id) {
		return churchOrgRepository.findOne(id);
	}

	@Transactional(readOnly = true)
	public Page<LocalizedChurchOrg> findAllByPage(Pageable pageable) {
		return churchOrgRepository.findAll(pageable);
	}

}
