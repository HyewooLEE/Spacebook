package spacebook.login.model;

public class MemberVO {
	private int mem_No;
	private String mem_Id;
	private String mem_Pwd;
	private String mem_Name;
	private String mem_Phone;
	private String mem_Favor;
	private String mem_Addr1;
	private String mem_Addr2;
	private String mem_Addr3;
	private String mem_Img;
	private String mem_KakaoEmail;
	private String mem_KakaoNickName;
	private String mem_KakaoProfile;
	private String mem_Code;
	private String mem_Auth;
	private String mem_Enabled;
	
	public int getMem_No() {
		return mem_No;
	}
	public void setMem_No(int mem_No) {
		this.mem_No = mem_No;
	}
	public String getMem_Id() {
		return mem_Id;
	}
	public void setMem_Id(String mem_Id) {
		this.mem_Id = mem_Id;
	}
	public String getMem_Pwd() {
		return mem_Pwd;
	}
	public void setMem_Pwd(String mem_Pwd) {
		this.mem_Pwd = mem_Pwd;
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
	public String getMem_Favor() {
		return mem_Favor;
	}
	public void setMem_Favor(String mem_Favor) {
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
	public String getMem_KakaoEmail() {
		return mem_KakaoEmail;
	}
	public void setMem_KakaoEmail(String mem_KakaoEmail) {
		this.mem_KakaoEmail = mem_KakaoEmail;
	}
	public String getMem_KakaoNickName() {
		return mem_KakaoNickName;
	}
	public void setMem_KakaoNickName(String mem_KakaoNickName) {
		this.mem_KakaoNickName = mem_KakaoNickName;
	}
	public String getMem_KakaoProfile() {
		return mem_KakaoProfile;
	}
	public void setMem_KakaoProfile(String mem_KakaoProfile) {
		this.mem_KakaoProfile = mem_KakaoProfile;
	}
	public String getMem_Code() {
		return mem_Code;
	}
	public void setMem_Code(String mem_Code) {
		this.mem_Code = mem_Code;
	}
	public String getMem_Auth() {
		return mem_Auth;
	}
	public void setMem_Auth(String mem_Auth) {
		this.mem_Auth = mem_Auth;
	}
	public String getMem_Enabled() {
		return mem_Enabled;
	}
	public void setMem_Enabled(String mem_Enabled) {
		this.mem_Enabled = mem_Enabled;
	}
	public MemberVO() {
	}
	public MemberVO(int mem_No, String mem_Id, String mem_Pwd, String mem_Name, String mem_Phone, String mem_Favor,
			String mem_Addr1, String mem_Addr2, String mem_Addr3, String mem_Img, String mem_KakaoEmail,
			String mem_KakaoNickName, String mem_KakaoProfile, String mem_Code, String mem_Auth, String mem_Enabled) {
		this.mem_No = mem_No;
		this.mem_Id = mem_Id;
		this.mem_Pwd = mem_Pwd;
		this.mem_Name = mem_Name;
		this.mem_Phone = mem_Phone;
		this.mem_Favor = mem_Favor;
		this.mem_Addr1 = mem_Addr1;
		this.mem_Addr2 = mem_Addr2;
		this.mem_Addr3 = mem_Addr3;
		this.mem_Img = mem_Img;
		this.mem_KakaoEmail = mem_KakaoEmail;
		this.mem_KakaoNickName = mem_KakaoNickName;
		this.mem_KakaoProfile = mem_KakaoProfile;
		this.mem_Code = mem_Code;
		this.mem_Auth = mem_Auth;
		this.mem_Enabled = mem_Enabled;
	}
	@Override
	public String toString() {
		return "MemberVO [mem_No=" + mem_No + ", mem_Id=" + mem_Id + ", mem_Pwd=" + mem_Pwd + ", mem_Name=" + mem_Name
				+ ", mem_Phone=" + mem_Phone + ", mem_Favor=" + mem_Favor + ", mem_Addr1=" + mem_Addr1 + ", mem_Addr2="
				+ mem_Addr2 + ", mem_Addr3=" + mem_Addr3 + ", mem_Img=" + mem_Img + ", mem_KakaoEmail=" + mem_KakaoEmail
				+ ", mem_KakaoNickName=" + mem_KakaoNickName + ", mem_KakaoProfile=" + mem_KakaoProfile + ", mem_Code="
				+ mem_Code + ", mem_Auth=" + mem_Auth + ", mem_Enabled=" + mem_Enabled + "]";
	}
	
	
	

}
