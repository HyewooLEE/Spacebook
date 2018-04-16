package spacebook.login.service;

import java.util.List;
import java.util.Map;

import spacebook.login.model.MemberVO;
public interface MemberDaoService {
 public int insertMember(Map<String, String> paramMap);
 public MemberVO selectMember(String username);
 public int insertKakao(MemberVO vo);
 public int findMember(String ID);
 public int insertInform(MemberVO vo);
 public List<MemberVO> memberList(String pageNumber);
 public int memberCount();
}