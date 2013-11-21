package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the ebi_course database table.
 * 
 */
@Entity
@Table(name="ebi_course")
@NamedQuery(name="EbiCourse.findAll", query="SELECT e FROM EbiCourse e")
public class EbiCourse implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private EbiCoursePK id;

	@Column(name="class_days")
	private String classDays;

	@Column(name="class_time1")
	private String classTime1;

	@Column(name="class_time2")
	private String classTime2;

	@Column(name="course_line1_en")
	private String courseLine1En;

	@Column(name="course_line1_zh")
	private String courseLine1Zh;

	@Column(name="course_line2_en")
	private String courseLine2En;

	@Column(name="course_line2_zh")
	private String courseLine2Zh;

	@Column(name="course_line3_en")
	private String courseLine3En;

	@Temporal(TemporalType.DATE)
	@Column(name="end_date")
	private Date endDate;

	@Column(name="is_intensive_course")
	private int isIntensiveCourse;

	@Column(name="mod_by")
	private String modBy;

	@Column(name="mod_date")
	private String modDate;

	@Column(name="professor_en")
	private String professorEn;

	@Column(name="professor_zh")
	private String professorZh;

	@Temporal(TemporalType.DATE)
	@Column(name="start_date")
	private Date startDate;

	//bi-directional many-to-one association to EbiAcademicQtr
	@ManyToOne
	@JoinColumns({
		@JoinColumn(name="academic_year", referencedColumnName="academic_year"),
		@JoinColumn(name="country", referencedColumnName="country"),
		@JoinColumn(name="quarter", referencedColumnName="quarter")
		})
	private EbiAcademicQtr ebiAcademicQtr;

	public EbiCourse() {
	}

	public EbiCoursePK getId() {
		return this.id;
	}

	public void setId(EbiCoursePK id) {
		this.id = id;
	}

	public String getClassDays() {
		return this.classDays;
	}

	public void setClassDays(String classDays) {
		this.classDays = classDays;
	}

	public String getClassTime1() {
		return this.classTime1;
	}

	public void setClassTime1(String classTime1) {
		this.classTime1 = classTime1;
	}

	public String getClassTime2() {
		return this.classTime2;
	}

	public void setClassTime2(String classTime2) {
		this.classTime2 = classTime2;
	}

	public String getCourseLine1En() {
		return this.courseLine1En;
	}

	public void setCourseLine1En(String courseLine1En) {
		this.courseLine1En = courseLine1En;
	}

	public String getCourseLine1Zh() {
		return this.courseLine1Zh;
	}

	public void setCourseLine1Zh(String courseLine1Zh) {
		this.courseLine1Zh = courseLine1Zh;
	}

	public String getCourseLine2En() {
		return this.courseLine2En;
	}

	public void setCourseLine2En(String courseLine2En) {
		this.courseLine2En = courseLine2En;
	}

	public String getCourseLine2Zh() {
		return this.courseLine2Zh;
	}

	public void setCourseLine2Zh(String courseLine2Zh) {
		this.courseLine2Zh = courseLine2Zh;
	}

	public String getCourseLine3En() {
		return this.courseLine3En;
	}

	public void setCourseLine3En(String courseLine3En) {
		this.courseLine3En = courseLine3En;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getIsIntensiveCourse() {
		return this.isIntensiveCourse;
	}

	public void setIsIntensiveCourse(int isIntensiveCourse) {
		this.isIntensiveCourse = isIntensiveCourse;
	}

	public String getModBy() {
		return this.modBy;
	}

	public void setModBy(String modBy) {
		this.modBy = modBy;
	}

	public String getModDate() {
		return this.modDate;
	}

	public void setModDate(String modDate) {
		this.modDate = modDate;
	}

	public String getProfessorEn() {
		return this.professorEn;
	}

	public void setProfessorEn(String professorEn) {
		this.professorEn = professorEn;
	}

	public String getProfessorZh() {
		return this.professorZh;
	}

	public void setProfessorZh(String professorZh) {
		this.professorZh = professorZh;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public EbiAcademicQtr getEbiAcademicQtr() {
		return this.ebiAcademicQtr;
	}

	public void setEbiAcademicQtr(EbiAcademicQtr ebiAcademicQtr) {
		this.ebiAcademicQtr = ebiAcademicQtr;
	}

}