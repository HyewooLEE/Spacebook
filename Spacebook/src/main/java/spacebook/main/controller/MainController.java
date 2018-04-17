package spacebook.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spacebook.main.service.MainService;
import spacebook.submit.model.SpaceDTO;
import spacebook.view.model.SpaceReviewDTO;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}

	@RequestMapping("main.do")
	public String main(Model model) {
		List<SpaceDTO> categorySpace = mainService.categorySpace();
		//List<SpaceDTO> countCate = mainService.countSpaceCategory();
		List<SpaceReviewDTO> review = mainService.reviewList();
		for(int i=0; i<review.size(); i++) {
			
		}
		model.addAttribute("category", categorySpace);
		model.addAttribute("review", review);
		//model.addAttribute("countCate", countCate);
	
		return "main";
	}
	
}
