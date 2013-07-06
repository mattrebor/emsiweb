package org.emsionline.emsiweb.service.jpa;

import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchOrg;
import org.emsionline.emsiweb.repository.ChurchOrgRepository;
import org.emsionline.emsiweb.repository.ChurchRepository;
import org.emsionline.emsiweb.service.ChurchOrgService;
import org.emsionline.emsiweb.service.ChurchOrgServiceTest;
import org.emsionline.emsiweb.service.ChurchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;

@Service("jpaChurchOrgService")
@Repository
@Transactional
public class ChurchOrgServiceImpl implements ChurchOrgService {

	Logger logger = Logger.getLogger(ChurchOrgServiceImpl.class);

	@Autowired
	private ChurchOrgRepository churchOrgRepository;

	@Transactional(readOnly = true)
	public List<ChurchOrg> findAll() {
		return Lists.newArrayList(churchOrgRepository.findAll());
	}

	@Transactional(readOnly = true)
	public ChurchOrg findById(Long id) {
		return churchOrgRepository.findOne(id);
	}

	public ChurchOrg save(ChurchOrg church_org) {
		return churchOrgRepository.save(church_org);
	}

	@Transactional(readOnly = true)
	public Page<ChurchOrg> findAllByPage(Pageable pageable) {
		return churchOrgRepository.findAll(pageable);
	}

	@Transactional(readOnly = true)
	public ChurchOrg findByIdWithChurches(Long id) {
		ChurchOrg org = findById(id);
		if (org != null) {
			Set<Church> churches = org.getChurches();
			logger.trace("churches.size = " + churches.size());

			recurse(1, org.getChurchOrgs());
		}

		return org;
	}

	void recurse(int level, Set<ChurchOrg> orgs) {
		if (orgs != null & orgs.size() > 0) {
			for (ChurchOrg org : orgs) {

				logger.trace("level " + level + ": " + org.getChurchOrgPath());

				recurse(level + 1, org.getChurchOrgs());

				Set<Church> churches = org.getChurches();

				for (Church church : churches) {
					logger.trace("  " + church.getChurchPath());
				}
			}
		}

	}

}
