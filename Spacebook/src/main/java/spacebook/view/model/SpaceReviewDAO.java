package spacebook.view.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceReviewDAO extends SqlSessionDaoSupport {
	public void spaceReviewInsert(SpaceReviewDTO dto) {
		
		getSqlSession().insert("spaceReview.insertReview", dto);
	}
	public List<SpaceReviewDTO> selectSpaceReview(int space_no, int startReview, int endReview) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("space_no", space_no);
		map.put("startReview", startReview);
		map.put("endReview", endReview);
		
		return getSqlSession().selectList("spaceReview.reviewDetails", map);
	}
	
	public int countSpaceReview(int space_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("space_no", space_no);
		
		return getSqlSession().selectOne("spaceReview.countReview", map);
	}
	public int averageReview(int space_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("space_no", space_no);
		
		return getSqlSession().selectOne("spaceReview.averageReview", map);
	}
}
