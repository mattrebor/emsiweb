package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ebi_country database table.
 * 
 */
@Entity
@Table(name="ebi_country")
@NamedQuery(name="EbiCountry.findAll", query="SELECT e FROM EbiCountry e")
public class EbiCountry implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String country;

	private String description;

	public EbiCountry() {
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}