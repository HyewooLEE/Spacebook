package spacebook.rent.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spacebook.login.model.MemberVO;
import spacebook.rent.model.SpaceRentDTO;
import spacebook.rent.model.SpaceRentVO;
import spacebook.rent.service.SpaceRentService;
import spacebook.submit.service.SpaceService;

@Controller
public class SpaceRentController{
	@Autowired
	SpaceRentService srs;
	
	public void setSrs(SpaceRentService srs){
		this.srs = srs;
	}
	
	@Autowired
	private SpaceService spaceService;
	
	public void setSpaceService(SpaceService spaceService) {
		this.spaceService = spaceService;
	}

	@RequestMapping(value="/insertRent.do", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void insertSpaceRent(SpaceRentDTO spaceRentDTO)throws Exception {
		/*System.out.println("mem_no:::"+spaceRentDTO.getMem_no());
		System.out.println("email:::"+spaceRentDTO.getRent_email());
		System.out.println("mem_name:::"+spaceRentDTO.getRent_name());
		System.out.println("rent_no:::"+spaceRentDTO.getRent_no());
		System.out.println("note:::"+spaceRentDTO.getRent_note());
		System.out.println("method:::"+spaceRentDTO.getRent_pay_method());
		System.out.println("phone:::"+spaceRentDTO.getRent_phone());
		System.out.println("end:::"+spaceRentDTO.getRent_end());
		System.out.println("start:::"+spaceRentDTO.getRent_start());
		System.out.println("price:::"+spaceRentDTO.getRent_sum());
		System.out.println("writdDate:::"+spaceRentDTO.getRent_writedate());
		System.out.println("space_no:::"+spaceRentDTO.getSpace_no());*/

		
		srs.insertSpaceRent(spaceRentDTO);
	}
	
	@RequestMapping("/myRentList.do")
	public String myRentList(SpaceRentDTO spaceRentDTO, HttpSession session, Model model, @RequestParam(value = "pageNum", defaultValue="1") String pageNum) throws Exception{
		MemberVO member = (MemberVO)session.getAttribute("login");
		
	    SpaceRentVO pageNation = new SpaceRentVO(pageNum, 10, 5, srs.getRentListSize(member.getMem_No()));
	    pageNation.setMem_no(member.getMem_No());
	 
		List<SpaceRentDTO> myRentList = srs.myRentList(pageNation);
		MemberVO memdto =  (MemberVO)session.getAttribute("login");
		int count = spaceService.mySpace(memdto.getMem_No());
		
		model.addAttribute("count", count);
		model.addAttribute("myRentList", myRentList);
		model.addAttribute("paging", pageNation);
		model.addAttribute("pageNum", pageNum);
		
		return "myRentList";
	}
	
	@RequestMapping("/deleteMyRent.do")
	public void deleteMyRent(@RequestParam("rent_no") int rent_no) {
		srs.deleteMyRent(rent_no);
	}
	
	
	/*http://localhost:8328/Spacebook/rentList.do*/
	/*pageNation*/
	@RequestMapping("/rentList.do")
	public String rentList(SpaceRentDTO spaceRentDTO, HttpSession session, Model model , @RequestParam(value = "pageNum", defaultValue="1") String pageNum) throws Exception{
		MemberVO member = (MemberVO)session.getAttribute("login");
			
	    SpaceRentVO pageNation = new SpaceRentVO(pageNum, 10, 5, srs.getRentListSize(member.getMem_No()));
	    pageNation.setMem_no(member.getMem_No());
	 
		List<SpaceRentDTO> rentList = srs.rentList(pageNation);

		model.addAttribute("rentList", rentList);
		model.addAttribute("paging", pageNation);
		model.addAttribute("pageNum", pageNum);
		
		return "rentList";
	}
	
	@RequestMapping("/exportRentList.do")
	public ModelAndView exportRentList(HttpSession session)  {
		MemberVO member = (MemberVO)session.getAttribute("login");
		List<SpaceRentDTO> rentList = srs.rentList(member.getMem_No());
		
		return new ModelAndView("exportRentList", "rentList", rentList);
	}
}