package spacebook.inquire.service;

import java.util.HashMap;
import java.util.List;

import spacebook.inquire.model.SpaceInquireDTO;

public interface SpaceInquireService {  
	
	public void insertSpaceInquire(SpaceInquireDTO inquireDTO);
	
	public List<SpaceInquireDTO> selectSpaceInquire(int pageNum);
	
	public List<SpaceInquireDTO> myInquireList(int pageNum, int mem_no);
	
	public int countSpaceInquire(int mem_no);
	
	public SpaceInquireDTO selectInqContent(int inq_no);
	
	public void deleteSpaceInquire(SpaceInquireDTO inquireDTO);
}