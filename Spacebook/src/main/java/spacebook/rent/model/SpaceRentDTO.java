package spacebook.rent.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

import spacebook.submit.model.SpaceDTO;
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="",propOrder= {"space_name","rent_name","rent_pay_method", "rent_note", "rent_writedate"})
public class SpaceRentDTO {
	private int rent_no;
	private int space_no;
	private int mem_no;
	private String rent_name;
	private String rent_email;
	private String rent_phone;
	private String rent_note;
	private String rent_pay_method;
	private String rent_writedate;
	private String rent_start;
	private String rent_end;
	private String rent_sum;
	
	private SpaceDTO spaceDTO;

	public SpaceDTO getSpaceDTO() {
		return spaceDTO;
	}
	public void setSpaceDTO(SpaceDTO spaceDTO) {
		this.spaceDTO = spaceDTO;
	}
	public String getRent_pay_method() {
		return rent_pay_method;
	}
	public void setRent_pay_method(String rent_pay_method) {
		this.rent_pay_method = rent_pay_method;
	}
	public int getRent_no() {
		return rent_no;
	}
	public void setRent_no(int rent_no) {
		this.rent_no = rent_no;
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
	public String getRent_name() {
		return rent_name;
	}
	public void setRent_name(String rent_name) {
		this.rent_name = rent_name;
	}
	public String getRent_email() {
		return rent_email;
	}
	public void setRent_email(String rent_email) {
		this.rent_email = rent_email;
	}
	public String getRent_phone() {
		return rent_phone;
	}
	public void setRent_phone(String rent_phone) {
		this.rent_phone = rent_phone;
	}
	public String getRent_note() {
		return rent_note;
	}
	public void setRent_note(String rent_note) {
		this.rent_note = rent_note;
	}
	public String getRent_writedate() {
		return rent_writedate;
	}
	public void setRent_writedate(String rent_writedate) {
		this.rent_writedate = rent_writedate;
	}
	public String getRent_start() {
		return rent_start;
	}
	public void setRent_start(String rent_start) {
		this.rent_start = rent_start;
	}
	public String getRent_end() {
		return rent_end;
	}
	public void setRent_end(String rent_end) {
		this.rent_end = rent_end;
	}
	public String getRent_sum() {
		return rent_sum;
	}
	public void setRent_sum(String rent_sum) {
		this.rent_sum = rent_sum;
	}
}
