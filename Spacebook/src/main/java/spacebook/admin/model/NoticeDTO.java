package spacebook.admin.model;

public class NoticeDTO {
	private int notice_No;
	private String notice_Title;
	private String notice_Content;
	private String notice_Date;
	public int getNotice_No() {
		return notice_No;
	}
	public void setNotice_No(int notice_No) {
		this.notice_No = notice_No;
	}
	public String getNotice_Title() {
		return notice_Title;
	}
	public void setNotice_Title(String notice_Title) {
		this.notice_Title = notice_Title;
	}
	public String getNotice_Content() {
		return notice_Content;
	}
	public void setNotice_Content(String notice_Content) {
		this.notice_Content = notice_Content;
	}
	public String getNotice_Date() {
		return notice_Date;
	}
	public void setNotice_Date(String notice_Date) {
		this.notice_Date = notice_Date;
	}
	public NoticeDTO() {
	}
	public NoticeDTO(int notice_No, String notice_Title, String notice_Content, String notice_Date) {
		this.notice_No = notice_No;
		this.notice_Title = notice_Title;
		this.notice_Content = notice_Content;
		this.notice_Date = notice_Date;
	}
	@Override
	public String toString() {
		return "NoticeDTO [notice_No=" + notice_No + ", notice_Title=" + notice_Title + ", notice_Content="
				+ notice_Content + ", notice_Date=" + notice_Date + "]";
	}
	

}
