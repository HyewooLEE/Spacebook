package spacebook.login.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spacebook.login.model.MemberDAO;
import spacebook.login.model.MemberVO;

@Service
public class MemberDaoServiceImpl implements MemberDaoService {
	@Autowired
	private MemberDAO dao;

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}

	@Override
	public int insertMember(Map<String, String> paramMap) {
		// TODO Auto-generated method stub
		return dao.insertMember("Member.insertMember", paramMap);
	}

	@Override
	public MemberVO selectMember(String username) {
		// TODO Auto-generated method stub
		return dao.selectMember("Member.selectMember", username);
	}

	@Override
	public int insertKakao(MemberVO vo) {
		// TODO Auto-generated method stub
		return dao.insertKakao("Member.insertKakao", vo);
	}
	@Override
	public int findMember(String ID) {
		return dao.findMember("Member.kakaoFind", ID);
	}
	@Override
	public int insertInform(MemberVO vo) {
		return dao.insertInform("Member.updateInform", vo);
	}

	@Override
	public List<MemberVO> memberList(String pageNumber) {
		return dao.memberList("Member.memberList",pageNumber);
	}
	@Override
	public List<MemberVO> memberList(HashMap<String, String> map) {
		return dao.memberList("Member.memberFilter",map);
	}

	@Override
	public int memberCount(HashMap<String, String> map) {
		return dao.memberCount("Member.memberCount",map);
	}

	@Override
	public int updateAuth(String filter,String mem_Id) {
		HashMap<String, String> map = new HashMap<>();
		map.put("filter", filter);
		map.put("mem_Id", mem_Id);
		return dao.updateAuth("Member.updateAuth", map);
	}

	@Override
	public int updatePwd(String changePwd,String mem_Id) {
		HashMap<String, String> map = new HashMap<>();
		map.put("mem_Pwd", changePwd);
		map.put("mem_Id", mem_Id);
		return dao.updatePwd("Member.updatePwd",map);
	}

}
