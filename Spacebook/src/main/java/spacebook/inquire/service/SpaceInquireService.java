package spacebook.inquire.service;

import java.util.List;

import spacebook.inquire.model.SpaceInquireDTO;

public interface SpaceInquireService {  
	
	public void insertSpaceInquire(SpaceInquireDTO inquireDTO);
	
	public List<SpaceInquireDTO> myInquireList(int pageNum, int mem_no);
	
	public int myInquireCount(int mem_no);
	
	public List<SpaceInquireDTO> myInquireListHost(int pageNum, int mem_no);
	
	public int myInquireHostCount(int mem_no);
	
	public SpaceInquireDTO selectInqContent(int inq_no);
	
	public void deleteSpaceInquire(SpaceInquireDTO inquireDTO);
}