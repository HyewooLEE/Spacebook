package spacebook.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
