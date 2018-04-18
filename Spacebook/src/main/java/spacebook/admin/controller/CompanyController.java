package spacebook.admin.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spacebook.admin.model.Email;
import spacebook.admin.util.EmailSender;

@Controller
public class CompanyController {
	@RequestMapping(value="company.do",method=RequestMethod.GET)
	public String company() {
		return "company";
	}
	@RequestMapping(value="howitwork.do",method=RequestMethod.GET)
	public String howitwork() {
		return "howitwork";
	}
	
	/*@Autowired
	   private EmailSender emailSender;
	   @Autowired
	   private Email email;
	    @RequestMapping("/sendpw.do")
	    public ModelAndView sendEmailAction (@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
	        ModelAndView mav;
	        String id=(String) paramMap.get("id");
	        String e_mail=(String) paramMap.get("email");
	        String pw=mainService.getPw(paramMap);
	        System.out.println(pw);
	        if(pw!=null) {
	            email.setContent("비밀번호는 "+pw+" 입니다.");
	            email.setReceiver(e_mail);
	            email.setSubject(id+"님 비밀번호 찾기 메일입니다.");
	            emailSender.SendEmail(email);
	            mav= new ModelAndView("redirect:/login.do");
	            return mav;
	        }else {
	            mav=new ModelAndView("redirect:/logout.do");
	            return mav;
	        }
	    }*/

}
