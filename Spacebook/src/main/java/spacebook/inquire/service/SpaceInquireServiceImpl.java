package spacebook.inquire.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.inquire.model.SpaceInquireDAO;
import spacebook.inquire.model.SpaceInquireDTO;


@Service
public class SpaceInquireServiceImpl implements SpaceInquireService{
	
	@Autowired
	SpaceInquireDAO dao;
	
	public void setDao(SpaceInquireDAO dao) {
		this.dao = dao;
	}

	@Override
	public void insertSpaceInquire(SpaceInquireDTO inquireDTO) {
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		inquireDTO.setInq_writeDate(sdf.format(dt));
		
		dao.spaceInquireInsert(inquireDTO);
	}
	
	@Override
	public List<SpaceInquireDTO> selectSpaceInquire() {
		return dao.spaceInquireSelect();
	}

	@Override
	public void deleteSpaceInquire(SpaceInquireDTO inquireDTO) {
		dao.spaceInquireDelete(inquireDTO);
	}

	

}
