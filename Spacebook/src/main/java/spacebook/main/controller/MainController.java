package spacebook.main.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spacebook.login.model.MemberDTO;
import spacebook.login.model.MemberVO;
import spacebook.login.service.MemberDaoService;
import spacebook.main.model.MainDTO;
import spacebook.main.service.MainService;
import spacebook.submit.model.SpaceDTO;

@Controller
public class MainController {

   @Autowired
   private MainService mainService;

   public void setMainService(MainService mainService) {
      this.mainService = mainService;
   }

   @Autowired
   private MemberDaoService service;

   public void setService(@Qualifier("MemberDaoServiceImpl") MemberDaoService service) {
      this.service = service;
   }

   @RequestMapping("accessDeny.do")
   public String accessDenyPage() {
      return "accessDeny";
   }
   @RequestMapping("errorPage.do")
   public String errorPage() {
	   return "errorPage";
   }

   @RequestMapping("main.do")
   public String main(Model model, HttpSession session) {
      SecurityContext securityContext = SecurityContextHolder.getContext();
      Object principal = securityContext.getAuthentication().getPrincipal();
      if (principal != null && principal instanceof MemberDTO) {
         String name = ((MemberDTO) principal).getUsername();
         MemberVO vo = service.selectMember(name);
         session.setAttribute("login", vo);
      }

      List<SpaceDTO> categorySpace = mainService.categorySpace();
      List<MainDTO> review = mainService.reviewList();

      model.addAttribute("category", categorySpace);
      model.addAttribute("review", review);

      return "main";
   }

}