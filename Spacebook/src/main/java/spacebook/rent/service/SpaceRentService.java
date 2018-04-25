package spacebook.rent.service;

import java.util.List;

import spacebook.rent.model.SpaceRentDTO;

public interface SpaceRentService {  
	
	public void insertSpaceRent(SpaceRentDTO dto);
	
	public List<SpaceRentDTO> myRentList(int mem_no);
	
	public void deleteMyRent(int rent_no);
	
	public List<SpaceRentDTO> rentList(int mem_no);
}