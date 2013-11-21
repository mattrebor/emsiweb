package org.emsionline.emsiweb.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name="page_template")
@NamedQuery(name="PageTemplate.findAll", query="SELECT p FROM PageTemplate p")
public class PageTemplate implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private PageTemplatePK id;

	@Column(name="last_mod_by")
	private String lastModBy;

	@Temporal(TemporalType.DATE)
	@Column(name="last_mod_date")
	private Date lastModDate;

	@Lob
	private String template;

	public PageTemplate() {
	}

	public PageTemplatePK getId() {
		return this.id;
	}

	public void setId(PageTemplatePK id) {
		this.id = id;
	}

	public String getLastModBy() {
		return this.lastModBy;
	}

	public void setLastModBy(String lastModBy) {
		this.lastModBy = lastModBy;
	}

	public Date getLastModDate() {
		return this.lastModDate;
	}

	public void setLastModDate(Date lastModDate) {
		this.lastModDate = lastModDate;
	}

	public String getTemplate() {
		return this.template;
	}

	public void setTemplate(String template) {
		this.template = template;
	}

}