package spacebook.submit.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.sf.json.JSONObject;
import spacebook.login.model.MemberVO;
import spacebook.submit.model.SpaceDTO;
import spacebook.submit.model.SpaceFacilityDTO;
import spacebook.submit.service.SpaceService;
import spacebook.view.model.SpaceReviewDTO;
import spacebook.view.service.SpaceViewService;

@Controller
public class SpaceController {
	
	@Autowired
	private SpaceService spaceService;
	
	public void setSpaceService(SpaceService spaceService) {
		this.spaceService = spaceService;
	}
	
	@Autowired
	public SpaceViewService spaceViewService;
	
	public void setSpaceViewService(SpaceViewService spaceViewService) {
		this.spaceViewService = spaceViewService;
	}

	@ModelAttribute("SpaceDTO")
	public SpaceDTO formBacking() {
		return new SpaceDTO(); 
	}

	@RequestMapping("/submitSpaceForm.do")
	public String write(SpaceDTO spaceDto, SpaceFacilityDTO spaceFacilityDto, Model model) {
		List<SpaceFacilityDTO> facility = spaceService.selectFacility();
		model.addAttribute("facility", facility);
		
		return "submitSpaceForm";
	}
	
	@RequestMapping(value="/submitSpace.do", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String insert(@RequestParam("fac_array") String fac_array, SpaceDTO spaceDto, SpaceFacilityDTO spaceFacilityDto, MultipartHttpServletRequest multi, Model model) throws IOException, IllegalStateException{ 
		
		spaceDto.setFac_no(fac_array);
		
		String conRealPath = multi.getSession().getServletContext().getRealPath("/");
		//String conRealPath = "C://Users/LeeHyewoo/git/Spacebook/Spacebook/WebContent/resources";
		String saveDir = "resources/images/";
		String realSaveDir=conRealPath+saveDir;
		
		File dir = new File(realSaveDir);
        if(!dir.isDirectory()){ 
            dir.mkdir();
        }

    	//img1
		String fileName1 = spaceDto.getReport1().getOriginalFilename();
		
		if(fileName1 != null){
			String ext1 = fileName1.substring(fileName1.lastIndexOf('.'));
			String saveFileName1 = getUuid() + ext1; 
			MultipartFile report1 = spaceDto.getReport1();
			String realPath1 = saveDir + saveFileName1;
			File file1 = new File(realSaveDir + File.separator + saveFileName1);
			//D:\hw_workspace_spring\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Spacebook\resources
			
			spaceDto.setSpace_img1(realPath1);
			
			try {
				report1.transferTo(file1);
			}catch(Exception e) {
	        	 e.printStackTrace();
	        }
		}
	
		//img2
		String fileName2 = spaceDto.getReport2().getOriginalFilename();
		
		if(fileName2 != ""){
			String ext2 = fileName2.substring(fileName2.lastIndexOf('.'));
			String saveFileName2 = getUuid() + ext2;
			MultipartFile report2 = spaceDto.getReport2();
			String realPath2 = saveDir + saveFileName2;
			File file2 = new File(conRealPath+saveDir + File.separator + saveFileName2);
	
			spaceDto.setSpace_img2(realPath2);
			
			try {
				report2.transferTo(file2);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
		//img3
		String fileName3 = spaceDto.getReport3().getOriginalFilename();
		
		if(fileName3 != ""){
			String ext3 = fileName3.substring(fileName3.lastIndexOf('.'));
			String saveFileName3 = getUuid() + ext3;
			
			MultipartFile report3 = spaceDto.getReport3();
			String realPath3 = saveDir + saveFileName3;
			File file3 = new File(conRealPath+saveDir + File.separator + saveFileName3);
			
			spaceDto.setSpace_img3(realPath3);
			
			try {
				report3.transferTo(file3);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
		//img4
		String fileName4 = spaceDto.getReport4().getOriginalFilename();
		
		if(fileName4 != ""){
			String ext4 = fileName4.substring(fileName4.lastIndexOf('.'));
			String saveFileName4 = getUuid() + ext4;
			MultipartFile report4 = spaceDto.getReport4();
			String realPath4 = saveDir + saveFileName4;
			File file4 = new File(conRealPath+saveDir + File.separator + saveFileName4);
			
			spaceDto.setSpace_img4(realPath4);
			
			try {
				report4.transferTo(file4);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
		//img5
		String fileName5 = spaceDto.getReport5().getOriginalFilename();
		
		if(fileName5 != ""){
			String ext5 = fileName5.substring(fileName5.lastIndexOf('.'));
			String saveFileName5 = getUuid() + ext5;
			MultipartFile report5 = spaceDto.getReport5();
			String realPath5 = saveDir + saveFileName5;
			File file5 = new File(conRealPath+saveDir + File.separator + saveFileName5);
			
			spaceDto.setSpace_img5(realPath5);
			
			try {
				report5.transferTo(file5);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
		//img6
		String fileName6 = spaceDto.getReport6().getOriginalFilename();
		
		if(fileName6 != ""){
			String ext6 = fileName6.substring(fileName6.lastIndexOf('.'));
			String saveFileName6 = getUuid() + ext6;
			MultipartFile report6 = spaceDto.getReport6();
			String realPath6 = saveDir + saveFileName6;
			File file6 = new File(conRealPath+saveDir + File.separator + saveFileName6);
			
			spaceDto.setSpace_img6(realPath6);
			
			try {
				report6.transferTo(file6);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
		//img7
		String fileName7 = spaceDto.getReport7().getOriginalFilename();
		
		if(fileName7 != ""){
			String ext7 = fileName7.substring(fileName7.lastIndexOf('.'));
			String saveFileName7 = getUuid() + ext7;
			MultipartFile report7 = spaceDto.getReport7();
			String realPath7 = saveDir + fileName7;
			File file7 = new File(conRealPath+saveDir + File.separator + saveFileName7);
			
			spaceDto.setSpace_img7(realPath7);
			
			try {
				report7.transferTo(file7);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		spaceService.insertSpace(spaceDto, spaceFacilityDto);
		
		model.addAttribute("msg", "등록완료되었습니다. 메인화면으로 이동합니다.");
		model.addAttribute("url", "main.do");
		
		return "submitRedirect";

	}
	
	//uuid생성 
	public static String getUuid() { 
		return UUID.randomUUID().toString().replaceAll("-", ""); 
	}
	
	@RequestMapping("/listSpace.do")
	public String list(SpaceDTO spaceDto, SpaceFacilityDTO spaceFacilityDto, SpaceReviewDTO spaceReviewDto, MemberVO memberVo, HttpSession session, Model model) {
		
		String contextPath = session.getServletContext().getRealPath("/");
		List<SpaceDTO> spaceAll = spaceService.selectSpaceAll();
		List<SpaceFacilityDTO> facility = spaceService.selectFacility();
		
		model.addAttribute("spaceAll", spaceAll);
		model.addAttribute("facility", facility);
		model.addAttribute("realPath", contextPath);
		
		return "listSpace";
	}
	
	
	@RequestMapping("/mySpaceList.do")
	public String mySpaceList(@RequestParam(value="pageNum", defaultValue="1") int pageNum,HttpSession session, SpaceDTO spaceDto, Model model) {
		MemberVO memdto =  (MemberVO)session.getAttribute("login");
		spaceDto.setMem_no(memdto.getMem_No());
		
		List<SpaceDTO> mySpace = spaceService.selectMySpace(spaceDto);
		int countMySpace = spaceService.countMySpace(spaceDto);
		model.addAttribute("mySpace", mySpace);
		model.addAttribute("countMySpace", countMySpace);
		
		return "mySpaceList";
	}
	
	@RequestMapping(value = "/updateSpaceForm.do", method = RequestMethod.GET)
	public String updateSpace(@RequestParam(value="space_no") int space_no, HttpSession session, SpaceDTO spaceDto, Model model) {
		MemberVO memdto =  (MemberVO)session.getAttribute("login");
		spaceDto.setMem_no(memdto.getMem_No());
		
		List listtest = new ArrayList();
		
		List<SpaceFacilityDTO> facility = spaceService.selectFacility();
		SpaceDTO spaceDetail = spaceViewService.spaceDetail(space_no);
		String space_fac_no = spaceDetail.getFac_no();
		
	     StringTokenizer token = new StringTokenizer(space_fac_no,",");
	      
	     while(token.hasMoreTokens()){
	        listtest.add(token.nextToken());
	     }
		
		
	 	model.addAttribute("selectFacility", listtest);
		model.addAttribute("facility", facility);
		model.addAttribute("spaceDetail", spaceDetail);
		
		return "submitSpaceForm";
	}
	
	@RequestMapping(value = "deleteSpace.do", method = RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void deleteSpace(@RequestParam(value="pageNum", defaultValue="1") int pageNum,HttpSession session,HttpServletResponse response,SpaceDTO spaceDto,Model model)throws Exception {
		spaceService.deleteSpace(spaceDto);
		MemberVO memdto =  (MemberVO)session.getAttribute("login");
		spaceDto.setMem_no(memdto.getMem_No());
		List<SpaceDTO> mySpace = spaceService.selectMySpace(spaceDto);
		
		JSONObject json = new JSONObject();
		json.put("data", mySpace);
		json.put("page", pageNum);
		response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(json.toString());
        
	}
	
	//search
	@RequestMapping(value = "/search.do", method = RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String search(@RequestParam(value="search", defaultValue="") String search,HttpSession session,SpaceDTO spaceDto, Model model) {
		
		String contextPath = session.getServletContext().getRealPath("/");
		if(spaceService.searchSpace(spaceDto, search).size() != 0) {
			List<SpaceDTO> spaceAll = spaceService.searchSpace(spaceDto, search);
			model.addAttribute("spaceAll", spaceAll);
		}else {
			model.addAttribute("counet", 0);
		}
		List<SpaceFacilityDTO> facility = spaceService.selectFacility();
		
		model.addAttribute("facility", facility);
		model.addAttribute("realPath", contextPath);
		
		return "listSpace";
	}
	
	//etcSpaceList
	@RequestMapping(value = "/etcSpaceList.do")
	public String etcSpaceList(@RequestParam(value="mem_no") int mem_no,HttpSession session, Model model) {
		String contextPath = session.getServletContext().getRealPath("/");
		List<SpaceFacilityDTO> facility = spaceService.selectFacility();
		List<SpaceDTO> spaceAll = spaceService.etcSpaceList(mem_no);
		
		model.addAttribute("facility", facility);
		model.addAttribute("spaceAll", spaceAll);
		model.addAttribute("realPath", contextPath);
		return "listSpace";
	}
	
	
	//map
	@RequestMapping(value = "/MapList.do", method = RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void startMap(HttpServletResponse response)throws Exception{
		List<SpaceDTO> spacedto = spaceService.selectMapList();
		
		JSONObject jso = new JSONObject();  //json형태 -> 데이터를 text형태로 바꿔 가변게 만듬
		jso.put("data", spacedto);
		
		response.setContentType("text/html;charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.print(jso.toString());
	}
	
	
	

}
