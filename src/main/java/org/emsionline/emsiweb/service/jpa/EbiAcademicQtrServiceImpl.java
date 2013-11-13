package org.emsionline.emsiweb.service.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.emsionline.emsiweb.domain.EbiAcademicQtr;
import org.emsionline.emsiweb.domain.EbiAcademicQtrPK;
import org.emsionline.emsiweb.repository.EbiAcademicYearRepository;
import org.emsionline.emsiweb.service.EbiAcademicQtrService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("EbiAcademicQtrService")
@Repository
@Transactional
public class EbiAcademicQtrServiceImpl implements EbiAcademicQtrService {
	
	@SuppressWarnings("unused")
	private final Logger log = LoggerFactory.getLogger(EbiAcademicQtrServiceImpl.class);
	
	@Autowired
	private EbiAcademicYearRepository ebiAcademicYearRepository;
	
	@PersistenceContext(unitName="emsiweb-pu", type=PersistenceContextType.TRANSACTION)
	private EntityManager em;
	
	
	@Override
	public List<EbiAcademicQtr> findAll() {
		TypedQuery<EbiAcademicQtr> query = em.createNamedQuery("EbiAcademicQtr.findAll", EbiAcademicQtr.class);
		return query.getResultList();
	}

	@Override
	public EbiAcademicQtr findById(EbiAcademicQtrPK pk) {
		EbiAcademicQtr result = em.find(EbiAcademicQtr.class, pk);
		return result;
	}

	@Override
	public EbiAcademicQtr save(EbiAcademicQtr ebiAcademicQtr) {
		return em.merge(ebiAcademicQtr);
	}

	@Override
	public Page<EbiAcademicQtr> findAllByPage(Pageable pageable) { // untested
		int pageSize = pageable.getPageSize();
		int pageNum = pageable.getPageNumber();
		TypedQuery<EbiAcademicQtr> query = em.createQuery("select e from EbiAcademicQtr e", EbiAcademicQtr.class);
		query.setFirstResult((pageNum - 1) * pageSize);
		query.setMaxResults(pageSize);
		List<EbiAcademicQtr> content = query.getResultList();
		
		CriteriaBuilder builder = em.getCriteriaBuilder();
		CriteriaQuery<Long> countQuery = builder.createQuery(Long.class);
		countQuery.select(builder.count(countQuery.from(EbiAcademicQtr.class)));
		Long count = em.createQuery(countQuery).getSingleResult();
		
		PageImpl<EbiAcademicQtr> page = new PageImpl<EbiAcademicQtr>(content, pageable, count);
		return page;
	}

}
