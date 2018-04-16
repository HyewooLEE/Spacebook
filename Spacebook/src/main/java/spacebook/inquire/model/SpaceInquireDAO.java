package spacebook.inquire.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceInquireDAO extends SqlSessionDaoSupport {

	public void spaceInquireInsert(SpaceInquireDTO inquireDTO) {
		getSqlSession().insert("spaceInquire.insertInquire", inquireDTO);
	}

	public void spaceInquireDelete(SpaceInquireDTO inquireDTO) {
		getSqlSession().delete("spaceInquire.deleteInquire", inquireDTO);
	}
}
