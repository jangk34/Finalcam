package poly.dto;

public class InqDTO {
	
	private String userno;
	private String title;
	private String content;
    private String userid;
    private String email;
    private String setfrom;
    
	public String getSetfrom() {
		return setfrom;
	}
	public void setSetfrom(String setfrom) {
		this.setfrom = setfrom;
	}
	public String getUserno() {
		return userno;
	}
	public void setUserno(String userno) {
		this.userno = userno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
    
}
