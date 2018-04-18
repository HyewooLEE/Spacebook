package spacebook.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.math3.stat.descriptive.SynchronizedDescriptiveStatistics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;

import spacebook.login.model.MemberVO;
import spacebook.login.service.MemberDaoService;
import spacebook.login.util.kakaologin;

@Controller
public class KakaoController {
	
	@Autowired
	private MemberDaoService service;
	public void setService(@Qualifier("MemberDaoServiceImpl") MemberDaoService service) {
		this.service = service;
	}

	@RequestMapping(value="kakaologin.do",produces="application/json" ,method= {RequestMethod.GET,RequestMethod.POST}) 
	public String login(@RequestParam("code") String code, HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception{
		  JsonNode token = kakaologin.getAccessToken(code);
		  JsonNode profile = kakaologin.getKakaoUserInfo(token.path("access_token").toString());
		  MemberVO vo = kakaologin.changeData(profile);
		  MemberVO dto = new MemberVO();
		  vo.setMem_Id("k"+vo.getMem_Id());
		  vo.setMem_Code(token.path("access_token").toString());
		  int check  = service.findMember(vo.getMem_Id());
		  if (check ==0) {
			  dto.setMem_Id(vo.getMem_Id());
			  service.insertKakao(dto);
			  dto =service.selectMember(vo.getMem_Id());
		  }else {
			  dto =service.selectMember(vo.getMem_Id());
		  }
		  dto.setMem_Code(vo.getMem_Code());
		  dto.setMem_KakaoEmail(vo.getMem_KakaoEmail());
		  System.out.println(dto.toString());
		  session.setAttribute("login", dto);
		  return "redirect:/main.do";
		}
	
	@RequestMapping(value="kakaologout.do",method= {RequestMethod.GET} )
	public String logout(@RequestHeader HttpHeaders headers ,HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception{
		System.out.println("1");
		MemberVO vo = (MemberVO) session.getAttribute("login");
		//kakaologin.logout(vo.getMem_Code());
		System.out.println("2");
		session.invalidate();
		return "redirect:/main.do";
	}
	




}
