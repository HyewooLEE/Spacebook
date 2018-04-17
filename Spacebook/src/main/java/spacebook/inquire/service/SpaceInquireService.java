package spacebook.inquire.service;

import java.util.List;

import spacebook.inquire.model.SpaceInquireDTO;

public interface SpaceInquireService {  
	
	public void insertSpaceInquire(SpaceInquireDTO dto);
	
	public List<SpaceInquireDTO> selectSpaceInquire();
	
	public void deleteSpaceInquire(SpaceInquireDTO dto);
}