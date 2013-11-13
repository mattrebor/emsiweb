package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the ebi_academic_year database table.
 * 
 */
@Entity
@Table(name="ebi_academic_year")
@NamedQuery(name="EbiAcademicYear.findAll", query="SELECT e FROM EbiAcademicYear e")
public class EbiAcademicYear implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private EbiAcademicYearPK id;

	private String description;

	//bi-directional many-to-one association to EbiAcademicQtr
	@OneToMany(mappedBy="ebiAcademicYear")
	private List<EbiAcademicQtr> ebiAcademicQtrs;

	public EbiAcademicYear() {
	}

	public EbiAcademicYearPK getId() {
		return this.id;
	}

	public void setId(EbiAcademicYearPK id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<EbiAcademicQtr> getEbiAcademicQtrs() {
		return this.ebiAcademicQtrs;
	}

	public void setEbiAcademicQtrs(List<EbiAcademicQtr> ebiAcademicQtrs) {
		this.ebiAcademicQtrs = ebiAcademicQtrs;
	}

	public EbiAcademicQtr addEbiAcademicQtr(EbiAcademicQtr ebiAcademicQtr) {
		getEbiAcademicQtrs().add(ebiAcademicQtr);
		ebiAcademicQtr.setEbiAcademicYear(this);

		return ebiAcademicQtr;
	}

	public EbiAcademicQtr removeEbiAcademicQtr(EbiAcademicQtr ebiAcademicQtr) {
		getEbiAcademicQtrs().remove(ebiAcademicQtr);
		ebiAcademicQtr.setEbiAcademicYear(null);

		return ebiAcademicQtr;
	}

}