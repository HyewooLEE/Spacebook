package spacebook.inquire.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;


public class SpaceInquireDAO extends SqlSessionDaoSupport {

	public void spaceInquireInsert(SpaceInquireDTO inquireDTO) {
		getSqlSession().insert("spaceInquire.insertInquire", inquireDTO);
	}
	
	public List<SpaceInquireDTO> spaceInquireSelect(Map<String, Integer> map) {
		//getSqlSession().selectList("spaceInquire.selectInquire",map)
		int mem_no = 29;
		return getSqlSession().selectList("spaceInquire.myInquireHostList",mem_no);
	}
	
	public List<SpaceInquireDTO> myInquireList(HashMap<String, Integer> map){
		return getSqlSession().selectList("spaceInquire.myInquireList",map);
	} 
	
	public int spaceInquireCount(int mem_no) {
		int countInquire = getSqlSession().selectOne("spaceInquire.countInquire", mem_no);
		return countInquire;
	}
	
	public SpaceInquireDTO inquireContent(Map<String, Integer> inq_no) {
		return getSqlSession().selectOne("spaceInquire.selectInqContent", inq_no);
	}
	
	public void updateInqStep(SpaceInquireDTO inquireDTO) {
		getSqlSession().update("spaceInquire.updateInqStep", inquireDTO);
	}
	
	public int selectMaxInqRef() {
		int maxInqRef = getSqlSession().selectOne("spaceInquire.selectMaxInqRef");
		return maxInqRef;
	}

	public void spaceInquireDelete(SpaceInquireDTO inquireDTO) {
		getSqlSession().delete("spaceInquire.deleteInquire", inquireDTO);
	}
}
