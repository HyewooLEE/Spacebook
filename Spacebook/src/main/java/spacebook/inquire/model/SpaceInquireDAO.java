package spacebook.inquire.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;


public class SpaceInquireDAO extends SqlSessionDaoSupport {

	//1:1문의 작성
	public void spaceInquireInsert(SpaceInquireDTO inquireDTO) {
		getSqlSession().insert("spaceInquire.insertInquire", inquireDTO);
	}
	
	//나의 1:1문의 (일반)
	public List<SpaceInquireDTO> myInquireList(HashMap<String, Integer> map){
		return getSqlSession().selectList("spaceInquire.myInquireList",map);
	} 
	
	//나의 1:1문의 (일반) count 
	public int myInquireCount(int mem_no) {
		int countInquire = getSqlSession().selectOne("spaceInquire.myInquireCount", mem_no);
		return countInquire;
	}
	
	//1:1문의 관리 (호스트)
	public List<SpaceInquireDTO> myInquireListHost(Map<String, Integer> map) {
		//getSqlSession().selectList("spaceInquire.selectInquire",map)
		return getSqlSession().selectList("spaceInquire.myInquireListHost",map);
	}
	
	//1:1문의 관리 (호스트) count
	public int myInquireHostCount(int mem_no) {
		int countInquire = getSqlSession().selectOne("spaceInquire.myInquireHostCount", mem_no);
		return countInquire;
	}
	
	//1:1문의 상세
	public SpaceInquireDTO inquireContent(Map<String, Integer> inq_no) {
		return getSqlSession().selectOne("spaceInquire.selectInqContent", inq_no);
	}
	
	//1:1문의 답변하기
	public void updateInqStep(SpaceInquireDTO inquireDTO) {
		getSqlSession().update("spaceInquire.updateInqStep", inquireDTO);
	}
	
	//가장최근 답변글번호
	public int selectMaxInqRef() {
		int maxInqRef = getSqlSession().selectOne("spaceInquire.selectMaxInqRef");
		return maxInqRef;
	}

	//1:1문의 글 삭제
	public void spaceInquireDelete(SpaceInquireDTO inquireDTO) {
		getSqlSession().delete("spaceInquire.deleteInquire", inquireDTO);
	}
}
