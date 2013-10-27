package org.emsionline.emsiweb.domain.minister;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="minister_detail")
public class MinisterDetail implements Serializable {
	
	private static final long serialVersionUID = -8127545766738382537L;
	
	private MinisterDetailPK id;
	
	private String  value;
	private String  lastModBy;
	private Date    lastModDate;
	
	private Minister minister;
	
	@EmbeddedId
	public MinisterDetailPK getId() { return id; }
	public void setId(MinisterDetailPK id) { this.id = id; }
	
	@Column(name="value")
	public String getValue() { return value; }
	public void setValue(String value) { this.value = value; }
	
	@Column(name="last_mod_by")
	public String getLastModBy() { return lastModBy; }
	public void setLastModBy(String lastModBy) { this.lastModBy = lastModBy; }
	
	@Temporal(TemporalType.DATE)
	@Column(name="last_mod_date")
	public Date getLastModDate() { return lastModDate; }
	public void setLastModDate(Date lastModDate) { this.lastModDate = lastModDate; }
	
	// bi-directional many-to-one association to Minister
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumns({
		@JoinColumn(name="minister_id", referencedColumnName="minister_id", nullable=false, insertable=false, updatable=false)
		})
	public Minister getMinister() { return minister; }
	public void setMinister(Minister minister) { this.minister = minister; }
	
	
	@Override
	public int hashCode() {
		return id.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj) { return true; }
		if (obj == null) { return false; }
		if (!(obj instanceof MinisterDetail)) { return false; }
		return id.equals(((MinisterDetail) obj).getId());
	}
}
