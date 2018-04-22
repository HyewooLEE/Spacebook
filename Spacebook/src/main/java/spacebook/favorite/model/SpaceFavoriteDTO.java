package spacebook.favorite.model;

import spacebook.login.model.MemberVO;
import spacebook.submit.model.SpaceDTO;

public class SpaceFavoriteDTO {
	private int fav_no;
	private String fav_div;
	private int mem_no;
	private int space_no;
	private SpaceDTO spaceDTO;
	private MemberVO memberVO;
	
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public SpaceDTO getSpaceDTO() {
		return spaceDTO;
	}
	public void setSpaceDTO(SpaceDTO spaceDTO) {
		this.spaceDTO = spaceDTO;
	}
	public int getFav_no() {
		return fav_no;
	}
	public void setFav_no(int fav_no) {
		this.fav_no = fav_no;
	}
	public String getFav_div() {
		return fav_div;
	}
	public void setFav_div(String fav_div) {
		this.fav_div = fav_div;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public int getSpace_no() {
		return space_no;
	}
	public void setSpace_no(int space_no) {
		this.space_no = space_no;
	}
}
