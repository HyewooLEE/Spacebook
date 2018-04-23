package spacebook.favorite.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.sf.json.JSONObject;
import spacebook.favorite.model.SpaceFavoriteDTO;
import spacebook.favorite.service.SpaceFavoriteService;
import spacebook.login.model.MemberVO;

@Controller
public class SpaceFavoriteController {
	@Autowired
	SpaceFavoriteService sfs;
	
	public void setSfs(SpaceFavoriteService sfs) {
		this.sfs = sfs;
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
	public String favoriteList(SpaceFavoriteDTO favoriteDTO, HttpSession session, Model model) {
		MemberVO member = (MemberVO)session.getAttribute("login");
		int countMyFavorite = sfs.countMyFavorite(member.getMem_No());
		List<SpaceFavoriteDTO> favoriteList = sfs.favoriteList(member.getMem_No());
		model.addAttribute("countMyFavorite", countMyFavorite);
		model.addAttribute("favoriteList", favoriteList);
		
		return "favoriteList";
	}
}