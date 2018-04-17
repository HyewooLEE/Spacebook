package spacebook.admin.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONObject;
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
		System.out.println("Count:" +memberCount);
		Pagination page =  new Pagination(Integer.parseInt(pageNumber), memberCount);
		System.out.println("type1:" +map.get("type1"));
		System.out.println("type2:" +map.get("type2"));
		System.out.println("search:" +map.get("search"));
		mv.addObject("members", members);
		mv.addObject("page", page);
		mv.addObject("type1",map.get("type1"));
		mv.addObject("type2",map.get("type2"));
		mv.addObject("search",map.get("search"));
	return mv;	
	}
	
	@RequestMapping(value="changeAuth.do",method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public void sidoList(HttpServletResponse response, @RequestParam("filter") String filter, @RequestParam("mem_Id") String mem_Id) throws Exception{
		JSONObject jso = new JSONObject();
		int check = service.updateAuth(filter,mem_Id);
		jso.put("check",check);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(jso.toString());
	}
}
