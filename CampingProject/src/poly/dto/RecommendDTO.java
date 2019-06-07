package poly.dto;

/**
 * @author 이협건
 * @version 1.1 공지사항 DTO
 */
public class RecommendDTO {

	private String recommendno;
	private String title;
    private String content;
    private String userId;
    private String regdate;
    
    public String getNoticeno() {
		return recommendno;
	}
	public void setNoticeno(String noticeno) {
		this.recommendno = noticeno;
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
    
}