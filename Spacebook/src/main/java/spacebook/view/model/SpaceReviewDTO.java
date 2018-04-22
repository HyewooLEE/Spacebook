package spacebook.view.model;

import spacebook.login.model.MemberVO;

public class SpaceReviewDTO {
	private int rev_no;
	private int space_no;
	private int mem_no;
	private String rev_writeDate;
	private String rev_note;
	private String rev_rate;
	private MemberVO memberVO;
	
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public int getRev_no() {
		return rev_no;
	}
	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}
	public int getSpace_no() {
		return space_no;
	}
	public void setSpace_no(int space_no) {
		this.space_no = space_no;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getRev_writeDate() {
		return rev_writeDate;
	}
	public void setRev_writeDate(String rev_writeDate) {
		this.rev_writeDate = rev_writeDate;
	}
	public String getRev_note() {
		return rev_note;
	}
	public void setRev_note(String rev_note) {
		this.rev_note = rev_note;
	}
	public String getRev_rate() {
		return rev_rate;
	}
	public void setRev_rate(String rev_rate) {
		this.rev_rate = rev_rate;
	}
	

	
	
}
