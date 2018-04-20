package spacebook.favorite.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SpaceFavoriteController {
	@RequestMapping(value="/insertFavorite.do", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void insertFavorite(@RequestParam(value = "space_no", defaultValue="1") int space_no, @RequestParam(value="mem_no") int mem_no)throws Exception {
		
	}
}