package upnab.model;

public class Member {
    private int member_num; 
    private String member_id; 
    private String member_password; 
    private String member_name; 
    private String member_email; 
    private int member_tel; 
    private int member_inout;
    private String member_img;    
    
	public String getMember_img() {
		return member_img;
	}
	public void setMember_img(String member_img) {
		this.member_img = member_img;
	}
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public int getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(int member_tel) {
		this.member_tel = member_tel;
	}
	public int getMember_inout() {
		return member_inout;
	}
	public void setMember_inout(int member_inout) {
		this.member_inout = member_inout;
	}
    
    
}
