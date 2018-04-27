package spacebook.rent.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name="",propOrder= {"space_name","rent_name","rent_pay_method", "rent_note", "rent_writedate"})
public class exportRentDTO {
	private String space_name;
	private String rent_name;
	private String rent_pay_method;
	private String rent_note;
	private String rent_writedate;
	
	public exportRentDTO(String space_name, String rent_name, String rent_pay_method, String rent_note, String rent_writedate) {
		this.space_name = space_name;
		this.rent_name = rent_name;
		this.rent_pay_method = rent_pay_method;
		this.rent_note = rent_note;
		this.rent_writedate = rent_writedate;
	}
	public String getSpace_name() {
		return space_name;
	}
	public void setSpace_name(String space_name) {
		this.space_name = space_name;
	}
	public String getRent_name() {
		return rent_name;
	}
	public void setRent_name(String rent_name) {
		this.rent_name = rent_name;
	}
	public String getRent_pay_method() {
		return rent_pay_method;
	}
	public void setRent_pay_method(String rent_pay_method) {
		this.rent_pay_method = rent_pay_method;
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
}
