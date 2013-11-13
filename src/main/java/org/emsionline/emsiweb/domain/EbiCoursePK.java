package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the ebi_course database table.
 * 
 */
@Embeddable
public class EbiCoursePK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="academic_year", insertable=false, updatable=false)
	private String academicYear;

	@Column(insertable=false, updatable=false)
	private String country;

	@Column(insertable=false, updatable=false)
	private String quarter;

	@Column(name="row_num")
	private int rowNum;

	public EbiCoursePK() {
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
	public String getQuarter() {
		return this.quarter;
	}
	public void setQuarter(String quarter) {
		this.quarter = quarter;
	}
	public int getRowNum() {
		return this.rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof EbiCoursePK)) {
			return false;
		}
		EbiCoursePK castOther = (EbiCoursePK)other;
		return 
			this.academicYear.equals(castOther.academicYear)
			&& this.country.equals(castOther.country)
			&& this.quarter.equals(castOther.quarter)
			&& (this.rowNum == castOther.rowNum);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.academicYear.hashCode();
		hash = hash * prime + this.country.hashCode();
		hash = hash * prime + this.quarter.hashCode();
		hash = hash * prime + this.rowNum;
		
		return hash;
	}
}