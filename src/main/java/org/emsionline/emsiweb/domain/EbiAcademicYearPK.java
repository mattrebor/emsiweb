package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the ebi_academic_year database table.
 * 
 */
@Embeddable
public class EbiAcademicYearPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="academic_year")
	private String academicYear;

	private String country;

	public EbiAcademicYearPK() {
	}
	public String getAcademicYear() {
		return this.academicYear;
	}
	public void setAcademicYear(String academicYear) {
		this.academicYear = academicYear;
	}
	public String getCountry() {
		return this.country;
	}
	public void setCountry(String country) {
		this.country = country;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof EbiAcademicYearPK)) {
			return false;
		}
		EbiAcademicYearPK castOther = (EbiAcademicYearPK)other;
		return 
			this.academicYear.equals(castOther.academicYear)
			&& this.country.equals(castOther.country);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.academicYear.hashCode();
		hash = hash * prime + this.country.hashCode();
		
		return hash;
	}
}