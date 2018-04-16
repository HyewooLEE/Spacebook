package spacebook.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spacebook.admin.model.NoticeDTO;
import spacebook.admin.service.NoticeService;
import spacebook.admin.util.Pagination;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService service;
	public void setService(@Qualifier("NoticeServiceImpl")NoticeService service) {
		this.service = service;
	}

	@RequestMapping(value="notice.do" ,method=RequestMethod.GET)
	public ModelAndView notice(String pageNumber) {
		if(pageNumber==null||pageNumber.equals("")) {
			pageNumber = "1";
		}
		ModelAndView	mv = new ModelAndView("notice");
		List<NoticeDTO> articles = service.getArticles(pageNumber);
		int articleCount =service.countNotice();
		Pagination page =  new Pagination(Integer.parseInt(pageNumber), articleCount);
		mv.addObject("articles", articles);
		mv.addObject("page", page);
		return mv;
	}
	@RequestMapping(value="noticeWriteForm.do",method=RequestMethod.GET)
	public String noticeForm() {
		
		return "noticeForm";
	}
	
	@RequestMapping(value="writeNotice.do",method=RequestMethod.POST)
	public ModelAndView writeNotice(NoticeDTO dto) {
		ModelAndView	mv = new ModelAndView("redirect:/noticeWriteForm.do");
		service.insertNotice(dto);
		return mv;
	}
	@RequestMapping(value="noticeContent.do",method=RequestMethod.GET)
	public ModelAndView writeNotice(@RequestParam("notice_No") String notice_No, @RequestParam("pageNumber") String pageNumber) {
		ModelAndView	mv = new ModelAndView("noticeContent");
		NoticeDTO article = service.getArticle(notice_No);
		mv.addObject("article", article);
		mv.addObject("pageNumber", pageNumber);
		return mv;
	}
	@RequestMapping(value="noticeDelete.do",method=RequestMethod.GET)
	public ModelAndView deleteNotice(@RequestParam("notice_No") String notice_No) {
		ModelAndView mv = new ModelAndView("redirect:/notice.do");
		int check = service.deleteNotice(notice_No);
		mv.addObject("check", check);
		return mv;
	}
	@RequestMapping(value="noticeUpdateForm.do",method=RequestMethod.GET)
	public ModelAndView updateNotice(@RequestParam("notice_No") String notice_No) {
		ModelAndView mv = new ModelAndView("noticeUpdateForm");
		NoticeDTO article = service.getArticle(notice_No);
		mv.addObject("article", article);
		return mv;
	}
	@RequestMapping(value="updateNotice.do",method=RequestMethod.POST)
	public ModelAndView updateNotice(NoticeDTO dto) {
		ModelAndView mv = new ModelAndView("redirect:/notice.do");
		int check = service.updateNotice(dto);
		return mv;
	}
	
	

}
