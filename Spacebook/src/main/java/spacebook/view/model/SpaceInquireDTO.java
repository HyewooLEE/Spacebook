package spacebook.view.model;

public class SpaceInquireDTO {
	private int inq_no;
	private int space_no;
	private String mem_no;
	private String inq_writeDate;
	private String inq_sub;
	private String inq_note;
	private int inq_ref;
	private int inq_step;
	private int inq_level;
	
	public String getMem_no() {
		return mem_no;
	}
	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
	public String getInq_sub() {
		return inq_sub;
	}
	public void setInq_sub(String inq_sub) {
		this.inq_sub = inq_sub;
	}
	public int getInq_no() {
		return inq_no;
	}
	public void setInq_no(int inq_no) {
		this.inq_no = inq_no;
	}
	public int getSpace_no() {
		return space_no;
	}
	public void setSpace_no(int space_no) {
		this.space_no = space_no;
	}
	public String getInq_writeDate() {
		return inq_writeDate;
	}
	public void setInq_writeDate(String inq_writeDate) {
		this.inq_writeDate = inq_writeDate;
	}
	public String getInq_note() {
		return inq_note;
	}
	public void setInq_note(String inq_note) {
		this.inq_note = inq_note;
	}
	public int getInq_ref() {
		return inq_ref;
	}
	public void setInq_ref(int inq_ref) {
		this.inq_ref = inq_ref;
	}
	public int getInq_step() {
		return inq_step;
	}
	public void setInq_step(int inq_step) {
		this.inq_step = inq_step;
	}
	public int getInq_level() {
		return inq_level;
	}
	public void setInq_level(int inq_level) {
		this.inq_level = inq_level;
	}
}
