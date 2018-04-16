package spacebook.view.service;

import java.util.List;

import spacebook.view.model.SpaceReviewDTO;

public interface SpaceReviewService {  
	public void insertSpaceReview(SpaceReviewDTO dto);
	
	public List<SpaceReviewDTO> selectSpaceReview(int space_no);
	
	public int countSpaceReview(int space_no);
}
