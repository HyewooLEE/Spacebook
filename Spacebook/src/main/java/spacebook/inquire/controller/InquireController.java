package spacebook.inquire.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.sf.json.JSONObject;
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
	
	//상세-1:1문의
	@RequestMapping(value="/spaceInquire.do", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String insertInquire(@RequestParam(value="pageNum", defaultValue="1") int pageNum, @RequestParam(value="space_no") int space_no, SpaceInquireDTO inquireDTO, Model model) {
		SpaceDTO spaceDTO = svs.spaceDetail(space_no);
		inquireService.insertSpaceInquire(inquireDTO);
		model.addAttribute("spaceDetail", spaceDTO);
		
		return "redirect:spaceView.do?space_no="+space_no;
	}
	
	//마이페이지-1:1문의 관리 호스트 답변
	@RequestMapping(value="/submitInquire.do", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String submitInquire(@RequestParam(value="pageNum", defaultValue="1") int pageNum , SpaceInquireDTO inquireDTO, Model model) {
		inquireService.insertSpaceInquire(inquireDTO);
		
		return "redirect:inquireContentHost.do?inq_no="+inquireDTO.getInq_no()+"&pageNum="+pageNum;
	}

	//나의 1:1문의 리스트
	@RequestMapping("inquireList.do")
	public String inquireList(@RequestParam(value="pageNum", defaultValue="1") int pageNum, SpaceInquireDTO inquireDTO, Model model) {
		List<SpaceInquireDTO> inquireList = inquireService.selectSpaceInquire(pageNum);
		int countInquire = inquireService.countSpaceInquire();
		System.out.println(countInquire);
		model.addAttribute("countInquire", countInquire);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("inquireList",inquireList);
		
		return "inquireList";
	}
	
	//나의 1:1문의 상세
	@RequestMapping("inquireContent.do")
	public String inquireContent(@RequestParam(value="pageNum", defaultValue="1") int pageNum, @RequestParam(value = "inq_no") int inq_no, Model model) {
		SpaceInquireDTO inquireDTO = inquireService.selectInqContent(inq_no);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("inquireList", inquireDTO);
		
		return "inquireContent";
	}
	
	//나의 1:1문의 삭제
	@RequestMapping(value = "deleteInquire.do", method = RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void deleteInquire(@RequestParam(value="pageNum", defaultValue="1") int pageNum,HttpServletResponse response,SpaceInquireDTO inquireDTO,Model model)throws Exception {
		inquireService.deleteSpaceInquire(inquireDTO);
		List<SpaceInquireDTO> inquireList = inquireService.selectSpaceInquire(pageNum);
		
		JSONObject json = new JSONObject();
		json.put("data", inquireList);
		json.put("page", pageNum);
		response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(json.toString());
        
	}
	
	//1:1문의 관리(호스트) 리스트
	@RequestMapping("inquireListHost.do")
	public String inquireListHost(@RequestParam(value="pageNum", defaultValue="1") int pageNum, SpaceInquireDTO inquireDTO, Model model) {
		List<SpaceInquireDTO> inquireList = inquireService.selectSpaceInquire(pageNum);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("inquireList",inquireList);
		
		return "inquireListHost";
	}
	
	//1:1문의 관리(호스트) 상세
	@RequestMapping("inquireContentHost.do")
	public String inquireContentHost(@RequestParam(value="pageNum", defaultValue="1") int pageNum, @RequestParam(value = "inq_no") int inq_no, Model model) {
		SpaceInquireDTO inquireDTO = inquireService.selectInqContent(inq_no);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("inquireList", inquireDTO);
		
		return "inquireContentHost";
	}
	
}
