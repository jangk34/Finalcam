package poly.dto;

public class QaDTO {
	
	private String qano;
	private String title;
	private String content;
    private String userId;
    
    public String getQano() {
		return qano;
	}
	public void setQano(String qano) {
		this.qano = qano;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	private String regdate;

}
