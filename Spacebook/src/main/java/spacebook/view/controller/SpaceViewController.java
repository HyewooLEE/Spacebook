package spacebook.view.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spacebook.submit.model.SpaceDTO;
import spacebook.view.model.EtcSpaceDTO;
import spacebook.view.model.SpaceInquireDTO;
import spacebook.view.model.SpaceReviewDTO;
import spacebook.view.service.SpaceInquireService;
import spacebook.view.service.SpaceReviewService;
import spacebook.view.service.SpaceViewService;

@Controller
public class SpaceViewController {

	@Autowired
	SpaceViewService svs;

	public void setSvs(SpaceViewService svs) {
		this.svs = svs;
	}

	@Autowired
	SpaceReviewService srs;

	public void setSrs(SpaceReviewService srs) {
		this.srs = srs;
	}
	
	@Autowired
	SpaceInquireService sis;
	
	public void setSis(SpaceInquireService sis) {
		this.sis = sis;
	}

	@RequestMapping("/spaceView.do")
	public String view(@RequestParam(value = "space_no", defaultValue="1") int space_no, Model model) {
		SpaceDTO dto = svs.spaceDetail(space_no);
		String space_tag = dto.getSpace_tag().trim();
		StringTokenizer st = new StringTokenizer(space_tag, ",");
		ArrayList<String> tag_list = new ArrayList<String>();
		 
		while(st.hasMoreTokens()) {
			tag_list.add("#"+ st.nextToken());
		}
		
		List<SpaceReviewDTO> review_list = srs.selectSpaceReview(space_no);
		int review_count = srs.countSpaceReview(space_no);
		
		List<EtcSpaceDTO> etc_dto = svs.etcSpaceList(dto.getMem_no());
		
		model.addAttribute("etcSpaceList", etc_dto);
		model.addAttribute("countReview", review_count);
		model.addAttribute("reviewList", review_list);
		model.addAttribute("spaceDetail", dto);
		model.addAttribute("space_tag", tag_list);
		
		return "spaceView";
	}

	@RequestMapping(value="/spaceReview.do", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String insertReview(@RequestParam(value = "space_no", defaultValue="1") int space_no, SpaceReviewDTO dto, Model model) {
		
		srs.insertSpaceReview(dto);
		
		return "redirect:spaceView.do";
	}
	
	@RequestMapping(value="/spaceInquire.do", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String insertInquiry(@RequestParam(value = "space_no", defaultValue="1") int space_no, SpaceInquireDTO dto, Model model) {
		
		sis.insertSpaceInquire(dto);
		
		return "redirect:spaceView.do";
	}
}