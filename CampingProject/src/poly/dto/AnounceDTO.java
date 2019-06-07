package poly.dto;

public class AnounceDTO {
	
	private String anounceno;
	private String title;
	private String content;
    private String userid;
    private String regdate;
    
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getAnounceno() {
		return anounceno;
	}
	public void setAnounceno(String anounceno) {
		this.anounceno = anounceno;
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
}
