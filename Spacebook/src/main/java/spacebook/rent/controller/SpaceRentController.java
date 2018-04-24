package spacebook.rent.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spacebook.login.model.MemberVO;
import spacebook.rent.model.SpaceRentDTO;
import spacebook.rent.service.SpaceRentService;


@Controller
public class SpaceRentController {
	@Autowired
	SpaceRentService srs;
	
	public void setSrs(SpaceRentService srs) {
		this.srs = srs;
	}

	@RequestMapping(value="/insertRent.do", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void insertSpaceRent(SpaceRentDTO spaceRentDTO, Model model)throws Exception {
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
	public String myRentList(SpaceRentDTO spaceRentDTO, HttpSession session, Model model) {
		MemberVO member = (MemberVO)session.getAttribute("login");
		//int countMyFavorite = srs.countMyFavorite(member.getMem_No());
		
		List<SpaceRentDTO> myRentList = srs.myRentList(member.getMem_No());
		//model.addAttribute("countMyFavorite", countMyFavorite);
		model.addAttribute("myRentList", myRentList);
		return "myRentList";
	}
}