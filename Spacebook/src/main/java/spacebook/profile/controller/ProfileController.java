package spacebook.profile.controller;

import java.io.File;
import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import spacebook.login.model.MemberVO;
import spacebook.login.service.MemberDaoService;
import spacebook.profile.model.ProfileVO;

@Controller
public class ProfileController implements ApplicationContextAware {

	Random random = new Random();
	MemberVO dto = new MemberVO();

	@Autowired
	private MemberDaoService service;

	public void setService(@Qualifier("MemberDaoServiceImpl") MemberDaoService service) {
		this.service = service;
	}

	private WebApplicationContext context = null;

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.context = (WebApplicationContext) applicationContext;
	}

	@RequestMapping(value = "profile.do", method = RequestMethod.GET)
	public String page() {
		return "profile";
	}

	@RequestMapping(value = "changeProfile.do", method = RequestMethod.POST)
	public ModelAndView changeProfile(ProfileVO vo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		dto = service.selectMember(vo.getMem_Id());
		MultipartFile file = vo.getFile();
		if (!file.getOriginalFilename().equals("")) {
			String mem_img = makeFile(file);
			dto.setMem_Img(mem_img);
		}
		dto = makeDTO(vo);
		int check = service.insertInform(dto);
		if (check == 1) {
			request.getSession().setAttribute("login", dto);
		}
		mv.addObject("check", check);
		mv.setViewName("redirect:/profile.do");
		return mv;
	}

	@RequestMapping(value = "password.do", method = RequestMethod.GET)
	public String page2() {
		return "password";
	}

	public String makeFile(MultipartFile file) {
		long currentTime = System.currentTimeMillis();
		int randomValue = random.nextInt(50);
		String filename = Long.toString(currentTime) + "_" + Integer.toString(randomValue) + file.getOriginalFilename();
		String path = context.getServletContext().getRealPath("/PROFILE");
		File newfile = new File(path + "/" + filename);
		try {
			file.transferTo(newfile);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "/Spacebook/PROFILE/" + filename;

	}

	public MemberVO makeDTO(ProfileVO vo) {
		String favorvo = "";
		String[] favor = vo.getMem_Favor();
		for (String str : favor) {
			favorvo += str + ",";
		}
		dto.setMem_Favor(favorvo);
		dto.setMem_Id(vo.getMem_Id());
		dto.setMem_Name(vo.getMem_Name());
		dto.setMem_Phone(vo.getMem_Phone());
		dto.setMem_Addr1(vo.getMem_Addr1());
		dto.setMem_Addr2(vo.getMem_Addr2());
		dto.setMem_Addr3(vo.getMem_Addr3());

		return dto;
	}

}
