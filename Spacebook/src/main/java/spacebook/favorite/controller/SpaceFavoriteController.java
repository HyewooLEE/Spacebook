package spacebook.favorite.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.sf.json.JSONObject;
import spacebook.favorite.model.SpaceFavoriteDTO;
import spacebook.favorite.model.SpaceFavoriteVO;
import spacebook.favorite.service.SpaceFavoriteService;
import spacebook.login.model.MemberVO;
import spacebook.view.service.SpaceReviewService;

@Controller
public class SpaceFavoriteController {
	@Autowired
	SpaceFavoriteService sfs;
	
	public void setSfs(SpaceFavoriteService sfs) {
		this.sfs = sfs;
	}
	
	@Autowired
	SpaceReviewService srs;

	public void setSrs(SpaceReviewService srs) {
		this.srs = srs;
	}

	@RequestMapping(value="/selectFavorite.do", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void insertFavorite(HttpServletResponse response, SpaceFavoriteDTO favoriteDTO, Model model)throws Exception {
		SpaceFavoriteDTO dto = sfs.selectFavorite(favoriteDTO);
		
		JSONObject jso = new JSONObject();
		jso.put("data", 2);
		
		if(dto == null || dto.getSpace_no() != favoriteDTO.getSpace_no()) {
			sfs.insertFavorite(favoriteDTO);
			jso.put("data", 1);
		} else {
			sfs.deleteFavorite(favoriteDTO);
			jso.put("data", 0);
		}
		
		PrintWriter out = response.getWriter();
		out.println(jso.toString());
		
	}
	
	@RequestMapping("/favoriteList.do")
	public String favoriteList(SpaceFavoriteDTO favoriteDTO, HttpSession session, @RequestParam(value = "pageNum", defaultValue="1") String pageNum, Model model) {
		MemberVO member = (MemberVO)session.getAttribute("login");
		int countMyFavorite = sfs.countMyFavorite(member.getMem_No());
		
		SpaceFavoriteVO pageNation = new SpaceFavoriteVO(pageNum, 4, 5, sfs.countMyFavorite(member.getMem_No()));
		pageNation.setMem_no(member.getMem_No());
	 			
		List<SpaceFavoriteDTO> favoriteList = sfs.favoriteList(pageNation);

		for(int i=0; i<favoriteList.size(); i++) {
			favoriteList.get(i).setReview_count(srs.countSpaceReview(favoriteList.get(i).getSpace_no()));
			if(favoriteList.get(i).getReview_count() > 0) {
				favoriteList.get(i).setReview_avg(srs.averageReview(favoriteList.get(i).getSpace_no()));
			}
		}
		 
		model.addAttribute("countMyFavorite", countMyFavorite);
		model.addAttribute("favoriteList", favoriteList);
		model.addAttribute("paging", pageNation);
		model.addAttribute("pageNum", pageNum);
		
		return "favoriteList";
	}
}