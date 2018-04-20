package spacebook.favorite.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.sf.json.JSONObject;
import spacebook.favorite.model.SpaceFavoriteDTO;
import spacebook.favorite.service.SpaceFavoriteService;

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
}