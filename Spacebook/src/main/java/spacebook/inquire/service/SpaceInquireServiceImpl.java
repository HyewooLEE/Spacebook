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
		
		inquireDAO.spaceInquireInsert(inquireDTO);
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
