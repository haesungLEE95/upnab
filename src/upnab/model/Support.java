package upnab.model;

import java.sql.Date;

public class Support {
	private String member_id;
	private String support_title;
	private String support_content;
	private Date support_date;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getSupport_title() {
		return support_title;
	}
	public void setSupport_title(String support_title) {
		this.support_title = support_title;
	}
	public String getSupport_content() {
		return support_content;
	}
	public void setSupport_content(String support_content) {
		this.support_content = support_content;
	}
	public Date getSupport_date() {
		return support_date;
	}
	public void setSupport_date(Date support_date) {
		this.support_date = support_date;
	}
	

}
