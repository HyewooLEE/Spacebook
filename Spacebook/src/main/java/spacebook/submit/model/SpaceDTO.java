package spacebook.submit.model;

import org.springframework.web.multipart.MultipartFile;

import spacebook.login.model.MemberVO;
import spacebook.view.model.SpaceReviewDTO;

public class SpaceDTO {
	
	private int space_no;
	private int mem_no;
	private String space_name;
	private String space_category;
	private String space_addr1;
	private String space_addr2;
	private String space_intro1;
	private String space_intro2;
	private String space_tag;
	private String fac_no;
	private String space_site;
	
	private MultipartFile report1;
	private MultipartFile report2;
	private MultipartFile report3;
	private MultipartFile report4;
	private MultipartFile report5;
	private MultipartFile report6;
	private MultipartFile report7;
	
	private String space_img1;
	private String space_img2;
	private String space_img3;
	private String space_img4;
	private String space_img5;
	private String space_img6;
	private String space_img7;
	
	private String space_phone;
	private String space_cau;
	private String space_peo_count;
	private String space_open;
	private String space_close;
	private String space_sum;
	private String space_bank;
	private String space_account;
	private String space_depositor;
	
	private String map_latitude;
	private String map_longitude;
	
	
	private SpaceFacilityDTO spaceFacilityDTO;
	
	private SpaceReviewDTO spaceReviewDTO;
	
	private MemberVO memberVO;
	
	private int count;
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public SpaceFacilityDTO getSpaceFacilityDTO() {
		return spaceFacilityDTO;
	}
	public void setSpaceFacilityDTO(SpaceFacilityDTO spaceFacilityDTO) {
		this.spaceFacilityDTO = spaceFacilityDTO;
	}
	public SpaceReviewDTO getSpaceReviewDTO() {
		return spaceReviewDTO;
	}
	public void setSpaceReviewDTO(SpaceReviewDTO spaceReviewDTO) {
		this.spaceReviewDTO = spaceReviewDTO;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
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
	public String getSpace_name() {
		return space_name;
	}
	public void setSpace_name(String space_name) {
		this.space_name = space_name;
	}
	public String getSpace_category() {
		return space_category;
	}
	public void setSpace_category(String space_category) {
		this.space_category = space_category;
	}
	public String getSpace_addr1() {
		return space_addr1;
	}
	public void setSpace_addr1(String space_addr1) {
		this.space_addr1 = space_addr1;
	}
	public String getSpace_addr2() {
		return space_addr2;
	}
	public void setSpace_addr2(String space_addr2) {
		this.space_addr2 = space_addr2;
	}
	public String getSpace_intro1() {
		return space_intro1;
	}
	public void setSpace_intro1(String space_intro1) {
		this.space_intro1 = space_intro1;
	}
	public String getSpace_intro2() {
		return space_intro2;
	}
	public void setSpace_intro2(String space_intro2) {
		this.space_intro2 = space_intro2;
	}
	public String getSpace_tag() {
		return space_tag;
	}
	public void setSpace_tag(String space_tag) {
		this.space_tag = space_tag;
	}
	public String getFac_no() {
		return fac_no;
	}
	public void setFac_no(String fac_no) {
		this.fac_no = fac_no;
	}
	public String getSpace_site() {
		return space_site;
	}
	public void setSpace_site(String space_site) {
		this.space_site = space_site;
	}
	public MultipartFile getReport1() {
		return report1;
	}
	public void setReport1(MultipartFile report1) {
		this.report1 = report1;
	}
	public MultipartFile getReport2() {
		return report2;
	}
	public void setReport2(MultipartFile report2) {
		this.report2 = report2;
	}
	public MultipartFile getReport3() {
		return report3;
	}
	public void setReport3(MultipartFile report3) {
		this.report3 = report3;
	}
	public MultipartFile getReport4() {
		return report4;
	}
	public void setReport4(MultipartFile report4) {
		this.report4 = report4;
	}
	public MultipartFile getReport5() {
		return report5;
	}
	public void setReport5(MultipartFile report5) {
		this.report5 = report5;
	}
	public MultipartFile getReport6() {
		return report6;
	}
	public void setReport6(MultipartFile report6) {
		this.report6 = report6;
	}
	public MultipartFile getReport7() {
		return report7;
	}
	public void setReport7(MultipartFile report7) {
		this.report7 = report7;
	}
	public String getSpace_img1() {
		return space_img1;
	}
	public void setSpace_img1(String space_img1) {
		this.space_img1 = space_img1;
	}
	public String getSpace_img2() {
		return space_img2;
	}
	public void setSpace_img2(String space_img2) {
		this.space_img2 = space_img2;
	}
	public String getSpace_img3() {
		return space_img3;
	}
	public void setSpace_img3(String space_img3) {
		this.space_img3 = space_img3;
	}
	public String getSpace_img4() {
		return space_img4;
	}
	public void setSpace_img4(String space_img4) {
		this.space_img4 = space_img4;
	}
	public String getSpace_img5() {
		return space_img5;
	}
	public void setSpace_img5(String space_img5) {
		this.space_img5 = space_img5;
	}
	public String getSpace_img6() {
		return space_img6;
	}
	public void setSpace_img6(String space_img6) {
		this.space_img6 = space_img6;
	}
	public String getSpace_img7() {
		return space_img7;
	}
	public void setSpace_img7(String space_img7) {
		this.space_img7 = space_img7;
	}
	public String getSpace_phone() {
		return space_phone;
	}
	public void setSpace_phone(String space_phone) {
		this.space_phone = space_phone;
	}
	public String getSpace_cau() {
		return space_cau;
	}
	public void setSpace_cau(String space_cau) {
		this.space_cau = space_cau;
	}
	public String getSpace_peo_count() {
		return space_peo_count;
	}
	public void setSpace_peo_count(String space_peo_count) {
		this.space_peo_count = space_peo_count;
	}
	public String getSpace_open() {
		return space_open;
	}
	public void setSpace_open(String space_open) {
		this.space_open = space_open;
	}
	public String getSpace_close() {
		return space_close;
	}
	public void setSpace_close(String space_close) {
		this.space_close = space_close;
	}
	public String getSpace_sum() {
		return space_sum;
	}
	public void setSpace_sum(String space_sum) {
		this.space_sum = space_sum;
	}
	public String getSpace_bank() {
		return space_bank;
	}
	public void setSpace_bank(String space_bank) {
		this.space_bank = space_bank;
	}
	public String getSpace_account() {
		return space_account;
	}
	public void setSpace_account(String space_account) {
		this.space_account = space_account;
	}
	public String getSpace_depositor() {
		return space_depositor;
	}
	public void setSpace_depositor(String space_depositor) {
		this.space_depositor = space_depositor;
	}
	public String getMap_latitude() {
		return map_latitude;
	}
	public void setMap_latitude(String map_latitude) {
		this.map_latitude = map_latitude;
	}
	public String getMap_longitude() {
		return map_longitude;
	}
	public void setMap_longitude(String map_longitude) {
		this.map_longitude = map_longitude;
	}
	
}
