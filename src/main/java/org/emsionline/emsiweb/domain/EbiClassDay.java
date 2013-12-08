package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ebi_class_days database table.
 * 
 */
@Entity
@Table(name="ebi_class_days")
@NamedQuery(name="EbiClassDay.findAll", query="SELECT e FROM EbiClassDay e")
public class EbiClassDay implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="class_days")
	private String classDays;

	public EbiClassDay() {
	}

	public String getClassDays() {
		return this.classDays;
	}

	public void setClassDays(String classDays) {
		this.classDays = classDays;
	}

}