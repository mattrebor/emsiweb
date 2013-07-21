package org.emsionline.emsiweb.repository;

import org.emsionline.emsiweb.domain.LocalizedChurchOrg;
import org.emsionline.emsiweb.domain.LocalizedChurchOrgKey;
import org.springframework.data.repository.PagingAndSortingRepository;


public interface LocalizedChurchOrgRepository extends PagingAndSortingRepository<LocalizedChurchOrg, LocalizedChurchOrgKey> {
}
