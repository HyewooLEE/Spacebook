package spacebook.main.service;

import java.util.List;

import spacebook.main.model.MainDTO;
import spacebook.submit.model.SpaceDTO;

public interface MainService {
	
	public List<SpaceDTO> categorySpace();
	
	//public List<SpaceDTO> countSpaceCategory();
	
	public List<MainDTO> reviewList();

}
