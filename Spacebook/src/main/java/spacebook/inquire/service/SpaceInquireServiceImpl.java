package spacebook.inquire.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.inquire.model.SpaceInquireDAO;
import spacebook.inquire.model.SpaceInquireDTO;


@Service
public class SpaceInquireServiceImpl implements SpaceInquireService{
	
	@Autowired
	SpaceInquireDAO inquireDAO;
	
	public void setDao(SpaceInquireDAO inquireDAO) {
		this.inquireDAO = inquireDAO;
	}

	@Override
	public void insertSpaceInquire(SpaceInquireDTO inquireDTO) {
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		inquireDTO.setInq_writeDate(sdf.format(dt));
		System.out.println("controller");
		
		int inq_no=inquireDTO.getInq_no(); //원글번호
		int inq_ref=0;  //원글+답변의 그룹번호. (원글과 원글에 딸린 답변이 번호가 같음) 
		int inq_step=0; //그룹 내 순서
		int inq_level=0; //레벨(원글은 0, 원글의 답변은 1, 원글 답변의 답변은 2, ..)
		
		//int maxNum = bDao.selectMaxNum(); //최신글 번호
		int maxInqRef = inquireDAO.selectMaxInqRef(); //최신답변글 번호
		
		System.out.println(maxInqRef);
		
		if(maxInqRef == 0) { //게시글이 없을때
			maxInqRef = 1; 
		}
		
		/*새글 작성*/
		if(inq_no == 0) {
			inquireDTO.setInq_ref(maxInqRef + 1);
			
			inquireDAO.spaceInquireInsert(inquireDTO);
			System.out.println("inq_no=0");
		}
		
		/*답글 작성*/
		else {
			System.out.println("inq_no!=0");
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("inqNo", inq_no);
			
			SpaceInquireDTO inquireData = inquireDAO.inquireContent(map);
			
			inq_ref = inq_no;
			inq_step = inquireData.getInq_step();
			inq_level = inquireData.getInq_level();
			
			inquireDTO.setInq_ref(inq_ref);
			inquireDTO.setInq_step(inq_step);
			inquireDTO.setInq_level(inq_level);
			
			inquireDAO.updateInqStep(inquireDTO);
			
			inq_step=inq_step+1;
			inq_level=inq_level+1;
        	
			inquireDTO.setSpace_no(inquireData.getSpace_no());
        	inquireDTO.setInq_step(inq_step);
        	inquireDTO.setInq_level(inq_level);
        	inquireDTO.setInq_writeDate(sdf.format(dt));
			
			System.out.println(inq_step);
			System.out.println(inq_level);
			System.out.println("제목"+inquireDTO.getInq_title());
			
			inquireDAO.spaceInquireInsert(inquireDTO);
			System.out.println("~~~~");
		}
		
	}
	
	@Override
	public List<SpaceInquireDTO> selectSpaceInquire(int pageNum) {
		Map<String ,Integer> map = new HashMap<String, Integer>();
		map.put("start", (pageNum - 1) * 10 + 1);
		map.put("end", pageNum*10);
		
		return inquireDAO.spaceInquireSelect(map);
	}
	
	@Override
	public SpaceInquireDTO selectInqContent(int inq_no) {
		Map<String, Integer> inqNo = new HashMap<String, Integer>();
		inqNo.put("inqNo", inq_no);
		
		return inquireDAO.inquireContent(inqNo);
	}

	@Override
	public void deleteSpaceInquire(SpaceInquireDTO inquireDTO) {
		inquireDAO.spaceInquireDelete(inquireDTO);
	}

}
