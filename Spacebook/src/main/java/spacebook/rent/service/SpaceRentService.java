package spacebook.rent.service;

import java.util.List;

import spacebook.rent.model.SpaceRentDTO;
import spacebook.rent.model.SpaceRentVO;

public interface SpaceRentService {  
	
	public void insertSpaceRent(SpaceRentDTO dto);
	
	public List<SpaceRentDTO> myRentList(SpaceRentVO pageNation);
	
	public int getMyRentListSize(int mem_no);
	
	public void deleteMyRent(int rent_no);
	
	public List<SpaceRentDTO> rentList(SpaceRentVO pageNation);
	
	public List<SpaceRentDTO> rentList(int mem_no);
	
	public int getRentListSize(int mem_no);
}