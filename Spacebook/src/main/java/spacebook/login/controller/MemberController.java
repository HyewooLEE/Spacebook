package spacebook.login.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONObject;
import spacebook.login.model.Email;
import spacebook.login.model.MemberVO;
import spacebook.login.service.EmailSender;
import spacebook.login.service.MemberDaoService;
import spacebook.login.service.ShaEncoder;

@Controller
public class MemberController {
	Random random = new Random(); 
	
	@Autowired
	private ShaEncoder encoder;
	public void setEncoder(ShaEncoder encoder) {
		this.encoder = encoder;
	}
	
	@Resource(name="userService")
	protected UserDetailsService userDetailsService;
	
	@Autowired
	private MemberDaoService service;
	public void setService(@Qualifier("UserDaoServiceImpl") MemberDaoService service) {
		this.service = service;
	}
	@Autowired
    private EmailSender emailSender;

	@RequestMapping("loginPage.do")
	public String loginPage() {
		return "login";
	}
	@RequestMapping("passwordFind.do")
	public String passwordFind() {
		return "passwordFind";
	}

	@RequestMapping(value= "passwordFindSubmit.do", method = RequestMethod.GET)
	public ModelAndView passwordFind(@RequestParam("EMAIL") String email) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO vo = service.selectMember(email);
		if (vo ==null) {
			mv.setViewName("passwordFindError");
		}else {
			long currentTime = System.currentTimeMillis();
			int randomValue = random.nextInt(50);
			String temporary = Long.toString(currentTime)+ Integer.toString(randomValue);
            String reciver = email;
            String subject = "임시 비밀번호 발급 되었습니다.";
            String content = "임시 비밀 번호는 " + temporary + " 입니다.";
             
            Email mail = new Email();
            mail.setReciver(reciver);
            mail.setSubject(subject);
            mail.setContent(content);
            emailSender.SendEmail(mail);
            
            String tempPwd = encoder.saltEncoding(temporary, email);
            service.updatePwd(tempPwd,email);
			mv.setViewName("passwordFindSuccess" );
		}
		return mv;
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
	public String insertInform2(@ModelAttribute MemberVO vo,@RequestParam("favor") String[] favor ,HttpServletRequest request,HttpSession session) {
		String favorvo = "";
		for (String str : favor) {
			favorvo += str+",";
			}
		vo.setMem_Favor(favorvo);
		service.insertInform(vo);
		MemberVO vo2 = service.selectMember(vo.getMem_Id()); 
		request.getSession().setAttribute("login", vo2);
		
		UserDetails ckUserDetails = userDetailsService.loadUserByUsername(vo2.getMem_Id());
	    Authentication authentication = new UsernamePasswordAuthenticationToken(ckUserDetails,vo2.getMem_Pwd(),ckUserDetails.getAuthorities());
	    SecurityContext securityContext = SecurityContextHolder.getContext();
	    securityContext.setAuthentication(authentication);
	    session = request.getSession(true);
	    session.setAttribute("SPRING_SECURITY_CONTEXT", securityContext);
		
		
		return "main";
	}
	
	@RequestMapping(value = "passwordLogin.do", method = RequestMethod.POST)
	public ModelAndView updatePwd(@RequestParam("email") String email, @RequestParam("passwd") String passwd, @RequestParam("passwdChange") String passwdChange) {
		ModelAndView mv = new ModelAndView("redirect:/password.do");
		String check ;
		String nowpw = encoder.saltEncoding(passwd, email);
		MemberVO vo = service.selectMember(email);
		String dbpw = vo.getMem_Pwd();
		if (nowpw.equals(dbpw)) {
			String changePw = encoder.saltEncoding(passwdChange, email);
			check = service.updatePwd(changePw,vo.getMem_Id())+"";
		}else {
			check = "-1";
		}
		mv.addObject("check", check);
		return mv;
	}
	
	@RequestMapping(value="loginCheck.do",method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public void loginCheck(HttpServletResponse response, @RequestParam("id") String id, @RequestParam("pwd") String pwd) throws Exception{
		JSONObject jso = new JSONObject();
		String check = "";
		MemberVO vo = null;
		vo = service.selectMember(id);
		if (vo == null) {
			check = "-1";
		}else {
			if(vo.getMem_Pwd().equals(encoder.saltEncoding(pwd, id))) {
				check ="1";
			}else{
				check="0";
			};
		}
		jso.put("check",check);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(jso.toString());
	}
	@RequestMapping(value="registCheck.do",method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public void registCheck(HttpServletResponse response, @RequestParam("id") String id) throws Exception{
		JSONObject jso = new JSONObject();
		String check = "";
		MemberVO vo = null;
		vo = service.selectMember(id);
		if (vo == null) {
			check = "1";
		}else {
			check ="-1";
		}
		jso.put("check",check);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(jso.toString());
	}
	
	

}
