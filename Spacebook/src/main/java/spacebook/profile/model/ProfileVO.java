package spacebook.profile.model;

import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author user1
 *
 */
/**
 * @author user1
 *
 */
public class ProfileVO {
	private String mem_Id;
	private String mem_Name;
	private String mem_Phone;
	private String[] mem_Favor;
	private String mem_Addr1;
	private String mem_Addr2;
	private String mem_Addr3;
	private String mem_Img;
	private MultipartFile file;
	public String getMem_Id() {
		return mem_Id;
	}
	public void setMem_Id(String mem_Id) {
		this.mem_Id = mem_Id;
	}
	public String getMem_Name() {
		return mem_Name;
	}
	public void setMem_Name(String mem_Name) {
		this.mem_Name = mem_Name;
	}
	public String getMem_Phone() {
		return mem_Phone;
	}
	public void setMem_Phone(String mem_Phone) {
		this.mem_Phone = mem_Phone;
	}
	public String[] getMem_Favor() {
		return mem_Favor;
	}
	public void setMem_Favor(String[] mem_Favor) {
		this.mem_Favor = mem_Favor;
	}
	public String getMem_Addr1() {
		return mem_Addr1;
	}
	public void setMem_Addr1(String mem_Addr1) {
		this.mem_Addr1 = mem_Addr1;
	}
	public String getMem_Addr2() {
		return mem_Addr2;
	}
	public void setMem_Addr2(String mem_Addr2) {
		this.mem_Addr2 = mem_Addr2;
	}
	public String getMem_Addr3() {
		return mem_Addr3;
	}
	public void setMem_Addr3(String mem_Addr3) {
		this.mem_Addr3 = mem_Addr3;
	}
	public String getMem_Img() {
		return mem_Img;
	}
	public void setMem_Img(String mem_Img) {
		this.mem_Img = mem_Img;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public ProfileVO(String mem_Id, String mem_Name, String mem_Phone, String[] mem_Favor, String mem_Addr1,
			String mem_Addr2, String mem_Addr3, String mem_Img, MultipartFile file) {
		this.mem_Id = mem_Id;
		this.mem_Name = mem_Name;
		this.mem_Phone = mem_Phone;
		this.mem_Favor = mem_Favor;
		this.mem_Addr1 = mem_Addr1;
		this.mem_Addr2 = mem_Addr2;
		this.mem_Addr3 = mem_Addr3;
		this.mem_Img = mem_Img;
		this.file = file;
	}
	public ProfileVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ProfileVO [mem_Id=" + mem_Id + ", mem_Name=" + mem_Name + ", mem_Phone=" + mem_Phone + ", mem_Favor="
				+ Arrays.toString(mem_Favor) + ", mem_Addr1=" + mem_Addr1 + ", mem_Addr2=" + mem_Addr2 + ", mem_Addr3="
				+ mem_Addr3 + ", mem_Img=" + mem_Img + ", file=" + file + "]";
	}
	
	
}
