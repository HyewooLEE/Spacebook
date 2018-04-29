package spacebook.view.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.view.model.SpaceReviewDAO;
import spacebook.view.model.SpaceReviewDTO;

@Service
public class SpaceReViewServiceImpl implements SpaceReviewService{
	@Autowired
	SpaceReviewDAO dao;
	
	public void setDao(SpaceReviewDAO dao) {
		this.dao = dao;
	}

	@Override
	public void insertSpaceReview(SpaceReviewDTO dto) {
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		dto.setRev_writeDate(sdf.format(dt));
		
		dao.spaceReviewInsert(dto);
	}

	@Override
	public List<SpaceReviewDTO> selectSpaceReview(int space_no, int startReview, int endReview) {
		return dao.selectSpaceReview(space_no, startReview, endReview);
	}

	@Override
	public int countSpaceReview(int space_no) {
		return dao.countSpaceReview(space_no);
	}

	@Override
	public int averageReview(int space_no) {
		return dao.averageReview(space_no);
	}

	@Override
	public void deleteReview(int rev_no) {
		dao.deleteReview(rev_no);
	}
}
