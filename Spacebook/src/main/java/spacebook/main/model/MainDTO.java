package spacebook.main.model;

public class MainDTO {
	private int rev_rate;
	private String rev_note;
	private String space_name;
	private String mem_name;
	private String mem_img;
	
	public int getRev_rate() {
		return rev_rate;
	}
	public void setRev_rate(int rev_rate) {
		this.rev_rate = rev_rate;
	}
	public String getRev_note() {
		return rev_note;
	}
	public void setRev_note(String rev_note) {
		this.rev_note = rev_note;
	}
	public String getSpace_name() {
		return space_name;
	}
	public void setSpace_name(String space_name) {
		this.space_name = space_name;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_img() {
		return mem_img;
	}
	public void setMem_img(String mem_img) {
		this.mem_img = mem_img;
	}
}
