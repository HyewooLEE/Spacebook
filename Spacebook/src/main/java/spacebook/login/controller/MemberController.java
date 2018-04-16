package spacebook.login.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spacebook.login.model.MemberVO;
import spacebook.login.service.MemberDaoService;
import spacebook.login.service.ShaEncoder;

@Controller
public class MemberController {

	@Autowired
	private ShaEncoder encoder;
	public void setEncoder(ShaEncoder encoder) {
		this.encoder = encoder;
	}

	@Autowired
	private MemberDaoService service;
	public void setService(@Qualifier("UserDaoServiceImpl") MemberDaoService service) {
		this.service = service;
	}

	@RequestMapping("loginPage.do")
	public String loginPage() {
		return "login";
	}

	@RequestMapping(value = "regist.do", method = RequestMethod.POST)
	public String insertUser(@RequestParam("email") String email, @RequestParam("password") String passwd,@RequestParam("authority") String authority) {
		String dbpw = encoder.saltEncoding(passwd, email);
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("email", email);
		paramMap.put("passwd", dbpw);
		paramMap.put("authority", authority);
		service.insertMember(paramMap);
		return "main";
	}
	
	@RequestMapping("join.do")
	public String join() {
		return "join";
	}
	

	@RequestMapping(value="join2.do", method=RequestMethod.POST)
	public ModelAndView insertInform(@ModelAttribute MemberVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("mem",vo);
		mv.setViewName("join2");
	return mv;
	}
	
	@RequestMapping(value="registInform.do" ,method=RequestMethod.POST)
	public String insertInform2(@ModelAttribute MemberVO vo,@RequestParam("favor") String[] favor ,HttpServletRequest request) {
		String favorvo = "";
		for (String str : favor) {
			favorvo += str+",";
			}
		vo.setMem_Favor(favorvo);
		service.insertInform(vo);
		MemberVO vo2 = service.selectMember(vo.getMem_Id()); 
		request.getSession().setAttribute("login", vo2);
		return "main";
	}

}
