package spacebook.inquire.model;

public class SpaceInquireDTO {
	private int inq_no;
	private int space_no;
	private int mem_no;
	private String mem_name;
	private String mem_id;
	private String inq_writeDate;
	private String inq_title;
	private String inq_note;
	private int inq_ref;
	private int inq_step;
	private int inq_level;
	
	
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
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getInq_writeDate() {
		return inq_writeDate;
	}
	public void setInq_writeDate(String inq_writeDate) {
		this.inq_writeDate = inq_writeDate;
	}
	public String getInq_title() {
		return inq_title;
	}
	public void setInq_title(String inq_title) {
		this.inq_title = inq_title;
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
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
}