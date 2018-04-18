package spacebook.inquire.controller;

import java.util.List;

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
	public String inquireList(@RequestParam(value="pageNum", defaultValue="1") int pageNum, SpaceInquireDTO inquireDTO, Model model) {
		List<SpaceInquireDTO> inquireList = inquireService.selectSpaceInquire(pageNum);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("inquireList",inquireList);
		
		return "inquireList";
	}
	
	@RequestMapping("inquireContent.do")
	public String inquireContent(@RequestParam(value="pageNum", defaultValue="1") int pageNum, @RequestParam(value = "inq_no") int inq_no, Model model) {
		SpaceInquireDTO inquireDTO = inquireService.selectInqContent(inq_no);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("inquireList", inquireDTO);
		
		return "inquireContent";
	}
	
	@RequestMapping("inquireListHost.do")
	public String inquireListHost(@RequestParam(value="pageNum", defaultValue="1") int pageNum, SpaceInquireDTO inquireDTO, Model model) {
		List<SpaceInquireDTO> inquireList = inquireService.selectSpaceInquire(pageNum);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("inquireList",inquireList);
		
		return "inquireListHost";
	}
	
	@RequestMapping("inquireContentHost.do")
	public String inquireContentHost(@RequestParam(value="pageNum", defaultValue="1") int pageNum, @RequestParam(value = "inq_no") int inq_no, Model model) {
		SpaceInquireDTO inquireDTO = inquireService.selectInqContent(inq_no);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("inquireList", inquireDTO);
		
		return "inquireContentHost";
	}
	
	@RequestMapping(value="/spaceInquire.do", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String insertInquire(@RequestParam(value = "space_no") int space_no, SpaceInquireDTO inquireDTO, Model model) {
		SpaceDTO spaceDTO = svs.spaceDetail(space_no);
		inquireService.insertSpaceInquire(inquireDTO);
		model.addAttribute("spaceDetail", spaceDTO);
		
		return "redirect:spaceView.do";
	}
	
}
