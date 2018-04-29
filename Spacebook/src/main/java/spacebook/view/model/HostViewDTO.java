package spacebook.view.model;

public class HostViewDTO {
	private int fac_no;
	private String fac_name;
	private String fac_icon;
	
	public int getFac_no() {
		return fac_no;
	}
	public void setFac_no(int fac_no) {
		this.fac_no = fac_no;
	}
	public String getFac_name() {
		return fac_name;
	}
	public void setFac_name(String fac_name) {
		this.fac_name = fac_name;
	}
	public String getFac_icon() {
		return fac_icon;
	}
	public void setFac_icon(String fac_icon) {
		this.fac_icon = fac_icon;
	}
	public HostViewDTO(int fac_no, String fac_name, String fac_icon) {
		super();
		this.fac_no = fac_no;
		this.fac_name = fac_name;
		this.fac_icon = fac_icon;
	}
	public HostViewDTO() {
		fac_no = 0;
		fac_name = "";
		fac_icon = "";
	}
	@Override
	public String toString() {
		return "SpaceFacilityDTO [fac_no=" + fac_no + ", fac_name=" + fac_name + ", fac_icon=" + fac_icon + "]";
	}
	
}
