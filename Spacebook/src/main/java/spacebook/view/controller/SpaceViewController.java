package spacebook.view.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.sf.json.JSONObject;
import spacebook.submit.model.SpaceDTO;
import spacebook.view.model.EtcSpaceDTO;
import spacebook.view.model.SpaceReviewDTO;
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
	
	@RequestMapping(value="/spaceView.do", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	public String view(@RequestParam(value = "space_no", defaultValue="1") int space_no, @RequestParam(value="startReview", defaultValue="1") int startReview, @RequestParam(value="endReview", defaultValue="3") int endReview, Model model) {
		SpaceDTO dto = svs.spaceDetail(space_no);
		
		String space_tag = dto.getSpace_tag().trim();
		StringTokenizer stst = new StringTokenizer(space_tag, ",");
		ArrayList<String> tag_list = new ArrayList<String>();
		while(stst.hasMoreTokens()) {
			tag_list.add("#"+ stst.nextToken());
		}
		
		String fac_no = dto.getFac_no().trim();
		StringTokenizer stfn = new StringTokenizer(fac_no, ",");
		ArrayList<String> fac_noList = new ArrayList<String>();
		while(stfn.hasMoreTokens()) {
			fac_noList.add(stfn.nextToken());
		}
		
		List<SpaceReviewDTO> review_list = srs.selectSpaceReview(space_no, startReview, endReview);
		int review_count = srs.countSpaceReview(space_no);
		
		List<EtcSpaceDTO> etc_dto = svs.etcSpaceList(dto.getMem_no());
		
		model.addAttribute("fac_no", fac_noList);
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
	
	@RequestMapping(value="/showReview.do", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void showReview(HttpServletResponse response, @RequestParam(value = "space_no", defaultValue="1") int space_no, @RequestParam(value="startReview", defaultValue="1") int startReview, @RequestParam(value="endReview", defaultValue="3") int endReview)throws Exception {
		List<SpaceReviewDTO> review_list = srs.selectSpaceReview(space_no, startReview, endReview);
		
		JSONObject jso = new JSONObject();
		jso.put("data", review_list);
		PrintWriter out = response.getWriter();
		out.println(jso.toString());
	}
}