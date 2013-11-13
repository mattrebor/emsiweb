package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the ebi_academic_qtr database table.
 * 
 */
@Entity
@Table(name="ebi_academic_qtr")
@NamedQuery(name="EbiAcademicQtr.findAll", query="SELECT e FROM EbiAcademicQtr e")
public class EbiAcademicQtr implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private EbiAcademicQtrPK id;

	private String description;

	@Column(name="is_active")
	private int isActive;

	@Column(name="mod_by")
	private String modBy;

	@Temporal(TemporalType.DATE)
	@Column(name="mod_date")
	private Date modDate;

	//bi-directional many-to-one association to EbiAcademicYear
	@ManyToOne
	@JoinColumns({
		@JoinColumn(name="academic_year", referencedColumnName="academic_year"),
		@JoinColumn(name="country", referencedColumnName="country")
		})
	private EbiAcademicYear ebiAcademicYear;

	//bi-directional many-to-one association to EbiCourse
	@OneToMany(mappedBy="ebiAcademicQtr")
	private List<EbiCourse> ebiCourses;

	public EbiAcademicQtr() {
	}

	public EbiAcademicQtrPK getId() {
		return this.id;
	}

	public void setId(EbiAcademicQtrPK id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getIsActive() {
		return this.isActive;
	}

	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}

	public String getModBy() {
		return this.modBy;
	}

	public void setModBy(String modBy) {
		this.modBy = modBy;
	}

	public Date getModDate() {
		return this.modDate;
	}

	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}

	public EbiAcademicYear getEbiAcademicYear() {
		return this.ebiAcademicYear;
	}

	public void setEbiAcademicYear(EbiAcademicYear ebiAcademicYear) {
		this.ebiAcademicYear = ebiAcademicYear;
	}

	public List<EbiCourse> getEbiCourses() {
		return this.ebiCourses;
	}

	public void setEbiCourses(List<EbiCourse> ebiCourses) {
		this.ebiCourses = ebiCourses;
	}

	public EbiCourse addEbiCours(EbiCourse ebiCours) {
		getEbiCourses().add(ebiCours);
		ebiCours.setEbiAcademicQtr(this);

		return ebiCours;
	}

	public EbiCourse removeEbiCours(EbiCourse ebiCours) {
		getEbiCourses().remove(ebiCours);
		ebiCours.setEbiAcademicQtr(null);

		return ebiCours;
	}

}