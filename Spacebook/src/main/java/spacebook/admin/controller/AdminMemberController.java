package spacebook.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import spacebook.admin.util.Pagination;
import spacebook.login.model.MemberVO;
import spacebook.login.service.MemberDaoService;

@Controller
public class AdminMemberController {
	
	@Autowired
	private MemberDaoService service;
	public void setService(@Qualifier("UserDaoServiceImpl") MemberDaoService service) {
		this.service = service;
	}
	@RequestMapping(value="adminMember.do",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView adminMember(String type1,String type2,String search,String pageNumber) {
		ModelAndView mv = new ModelAndView("adminMember");
		HashMap<String, String> map = new HashMap<String,String>();
		List<MemberVO> members = null;
		
		if(pageNumber==null||pageNumber.equals("")) {
			pageNumber = "1";
		}
		
		map.put("type1", type1);
		map.put("type2", type2);
		map.put("search", search);
		map.put("pageNumber", pageNumber);
		System.out.println(map.toString());
		members = service.memberList(map);
		
		int memberCount =service.memberCount(map);
		System.out.println(memberCount);
		
		Pagination page =  new Pagination(Integer.parseInt(pageNumber), memberCount);
		
		mv.addObject("members", members);
		mv.addObject("page", page);
		
	return mv;	
	}
	
	
}
