package spacebook.inquire.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spacebook.inquire.service.SpaceInquireService;

@Controller
public class InquireController {
	
	@Autowired
	private SpaceInquireService inquireService;

	public void setInquireService(SpaceInquireService inquireService) {
		this.inquireService = inquireService;
	}

	@RequestMapping("inquireList.do")
	public String InquireList(Model model) {
		
		return "inquireList";
	}
	
}
