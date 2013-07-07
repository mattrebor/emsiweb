package org.emsionline.emsiweb.domain;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Version;
import javax.validation.constraints.Size;

//import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "page_fragment")
public class PageFragment implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5981872800698390231L;
	
	
	private Long pageFragmentId;
	private int version;
	private String title;
	private String body;
	
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "page_fragment_id")
	public Long getPageFragmentId() {
		return pageFragmentId;
	}
	
	public void setPageFragmentId(Long pageFragmentId) {
		this.pageFragmentId = pageFragmentId;
	}
	
	@Version
	@Column(name = "version")
	public int getVersion() {
		return version;
	}
	
	public void setVersion(int version) {
		this.version = version;
	}
	
	//@NotEmpty(message="{validation.page_title.not_empty.message}")
	@Size(min = 3, max = 120, message="{validation.page_title.size.message}")
	@Column(name = "title")
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Lob
	@Basic(fetch = FetchType.LAZY)
	@Column(name = "body")
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	
	
	
}
