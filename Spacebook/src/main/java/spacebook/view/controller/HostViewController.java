package spacebook.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spacebook.view.service.HostViewService;

@Controller
public class HostViewController {

	@Autowired
	HostViewService hvs;

	public void setHvs(HostViewService hvs) {
		this.hvs = hvs;
	}

	@RequestMapping(value="/hostView.do", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	public String view(@RequestParam("space_no") int space_no, Model model) {
		
		//HostViewDTO dto = hvs.spaceDetail(space_no);
		
		return "hostView";
	}
}