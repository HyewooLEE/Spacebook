package spacebook.admin.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spacebook.login.model.Email;

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
}
