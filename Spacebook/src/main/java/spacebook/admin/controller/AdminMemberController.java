package spacebook.admin.controller;

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
	@RequestMapping(value="adminMember.do",method=RequestMethod.GET)
	public ModelAndView adminMember(String pageNumber) {
		if(pageNumber==null||pageNumber.equals("")) {
			pageNumber = "1";
		}
		ModelAndView mv = new ModelAndView("adminMember");
		List<MemberVO> members = service.memberList(pageNumber);
		int memberCount =service.memberCount();
		Pagination page =  new Pagination(Integer.parseInt(pageNumber), memberCount);
		mv.addObject("members", members);
		mv.addObject("page", page);
	return mv;	
	}
}
