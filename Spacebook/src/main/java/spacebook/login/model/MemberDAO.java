package spacebook.login.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class MemberDAO extends SqlSessionDaoSupport {
	public int insertMember(String QueryId, Map<String, String> paramMap) {
		int check = getSqlSession().insert(QueryId, paramMap);
		return check;
	}

	public MemberVO selectMember(String QueryId, String username) {
		MemberVO vo = getSqlSession().selectOne(QueryId, username);
		return vo;
	}

	public int insertKakao(String QueryId, MemberVO vo) {
		int check = getSqlSession().insert(QueryId, vo);
		return check;
	}
	public int findMember(String QueryId, String ID) {
		int check =getSqlSession().selectOne(QueryId, ID);
		return check;
	}
	public int insertInform(String QueryId, MemberVO vo) {
		int check =getSqlSession().update(QueryId, vo);
		return check;
	}
	public List<MemberVO> memberList(String QueryId,String pageNumber){
		List<MemberVO> members = getSqlSession().selectList(QueryId,pageNumber);
		return members;
	}
	public List<MemberVO> memberList(String QueryId,HashMap<String, String> map){
		List<MemberVO> members = getSqlSession().selectList(QueryId,map);
		return members;
	}
	public int memberCount(String QueryId,HashMap<String, String> map){
		int memberCount = getSqlSession().selectOne(QueryId,map);
		return memberCount;
	}
}
