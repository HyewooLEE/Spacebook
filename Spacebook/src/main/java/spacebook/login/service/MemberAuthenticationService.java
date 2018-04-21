package spacebook.login.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import spacebook.login.model.MemberDTO;

public class MemberAuthenticationService implements UserDetailsService {

	private SqlSessionTemplate sqlSession;

	public MemberAuthenticationService() {
		// TODO Auto-generated constructor stub
	}

	public MemberAuthenticationService(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated constructor stub
		this.sqlSession = sqlSession;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		Map<String, Object> user = sqlSession.selectOne("Member.auth", username);
		if (user == null)
			throw new UsernameNotFoundException(username);
		List<GrantedAuthority> gas = new ArrayList<GrantedAuthority>();
		gas.add(new SimpleGrantedAuthority(user.get("AUTHORITY").toString()));
		return new MemberDTO(user.get("USERNAME").toString(), user.get("PASSWORD").toString(), gas);
	}
}