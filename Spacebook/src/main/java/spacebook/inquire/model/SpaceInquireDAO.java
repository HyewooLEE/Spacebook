package spacebook.inquire.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceInquireDAO extends SqlSessionDaoSupport {

	public void spaceInquireInsert(SpaceInquireDTO inquireDTO) {
		getSqlSession().insert("spaceInquire.insertInquire", inquireDTO);
	}
	
	public List<SpaceInquireDTO> spaceInquireSelect() {
		return getSqlSession().selectList("spaceInquire.selectInquire");
	}

	public void spaceInquireDelete(SpaceInquireDTO inquireDTO) {
		getSqlSession().delete("spaceInquire.deleteInquire", inquireDTO);
	}
}
