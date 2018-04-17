package spacebook.main.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import spacebook.submit.model.SpaceDTO;
import spacebook.view.model.SpaceReviewDTO;

public class MainDAO extends SqlSessionDaoSupport{
	
	public List<SpaceDTO> selectCategorySpace(){
		return getSqlSession().selectList("main.selectSpaceCategory");
	}
	
	/*public List<SpaceDTO> countSpaceCategory() {
		
		return getSqlSession().selectList("main.countSpaceCategory");
	}*/

	public List<SpaceReviewDTO> reviewList() {
		return getSqlSession().selectList("main.reviewList");
	}
}
