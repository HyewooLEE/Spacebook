package spacebook.inquire.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceInquireDAO extends SqlSessionDaoSupport {
	public void spaceInquireInsert(SpaceInquireDTO dto) {
		getSqlSession().insert("spaceReview.insertReview", dto);
	}
	
	public void spaceInquireDelete(SpaceInquireDTO dto) {
		getSqlSession().delete("spaceReview.insertReview", dto);
	}
}
