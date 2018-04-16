package spacebook.view.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceInquireDAO extends SqlSessionDaoSupport {
	public void spaceInquireInsert(SpaceInquireDTO dto) {
		getSqlSession().insert("spaceInquire.insertInquire", dto);
	}
	
	public void spaceInquireDelete(SpaceInquireDTO dto) {
		getSqlSession().delete("spaceInquire.deleteInquire", dto);
	}
}
