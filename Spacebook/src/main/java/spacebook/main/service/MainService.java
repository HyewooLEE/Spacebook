package spacebook.main.service;

import java.util.List;

import spacebook.submit.model.SpaceDTO;
import spacebook.view.model.SpaceReviewDTO;

public interface MainService {
	
	public List<SpaceDTO> categorySpace();
	
	//public List<SpaceDTO> countSpaceCategory();
	
	public List<SpaceReviewDTO> reviewList();

}
