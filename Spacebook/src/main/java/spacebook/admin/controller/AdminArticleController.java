package spacebook.admin.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.sf.json.JSONObject;
import spacebook.submit.model.SpaceDTO;
import spacebook.submit.service.SpaceService;

@Controller
public class AdminArticleController {
	
	@Autowired
	private SpaceService spaceService;
	
	public void setSpaceService(SpaceService spaceService) {
		this.spaceService = spaceService;
	}
	
	@RequestMapping("adminArticle.do")
	public String List(SpaceDTO spaceDto,Model model) {
		List<SpaceDTO> spaceAll = spaceService.selectSpaceAll();
		
		model.addAttribute("spaceAll", spaceAll);
		
		return "adminArticle";
	}
	
	@RequestMapping(value = "/adminArticleDelete.do", method = RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void delete(HttpServletResponse response,SpaceDTO spaceDto,Model model)throws Exception {
		List<SpaceDTO> spaceAll = spaceService.selectSpaceAll();
		
		JSONObject json = new JSONObject();
		json.put("data", spaceAll);
		response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(json.toString());
        
        spaceService.deleteSpace(spaceDto);
        
	}
	
	

}
