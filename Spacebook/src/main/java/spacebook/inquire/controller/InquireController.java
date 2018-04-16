package spacebook.inquire.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spacebook.inquire.model.SpaceInquireDTO;
import spacebook.inquire.service.SpaceInquireService;
import spacebook.submit.model.SpaceDTO;
import spacebook.view.service.SpaceViewService;

@Controller
public class InquireController {
	
	@Autowired
	SpaceViewService svs;

	public void setSvs(SpaceViewService svs) {
		this.svs = svs;
	}
	
	@Autowired
	private SpaceInquireService inquireService;
	
	public void setInquireService(SpaceInquireService inquireService) {
		this.inquireService = inquireService;
	}

	@RequestMapping("inquireList.do")
	public String inquireList(Model model) {
		
		return "inquireList";
	}
	
	@RequestMapping(value="/spaceInquire.do", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String insertInquire(@RequestParam(value = "space_no", defaultValue="1") int space_no, SpaceInquireDTO inquireDTO, Model model) {
		SpaceDTO spaceDTO = svs.spaceDetail(space_no);
		inquireService.insertSpaceInquire(inquireDTO);
		model.addAttribute("spaceDetail", spaceDTO);
		
		return "redirect:spaceView.do";
	}
	
}
