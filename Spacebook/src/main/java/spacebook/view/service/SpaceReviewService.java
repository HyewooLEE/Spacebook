package spacebook.view.service;

import java.util.List;

import spacebook.view.model.SpaceReviewDTO;

public interface SpaceReviewService {  
	public void insertSpaceReview(SpaceReviewDTO dto);
	
	public List<SpaceReviewDTO> selectSpaceReview(int space_no, int startReview, int endReview);
	
	public int countSpaceReview(int space_no);
	
	public int averageReview(int space_no);
}
