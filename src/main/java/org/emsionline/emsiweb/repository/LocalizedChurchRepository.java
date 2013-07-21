package org.emsionline.emsiweb.repository;

import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.emsionline.emsiweb.domain.LocalizedChurchKey;
import org.springframework.data.repository.PagingAndSortingRepository;


public interface LocalizedChurchRepository extends PagingAndSortingRepository<LocalizedChurch, LocalizedChurchKey> {

}
