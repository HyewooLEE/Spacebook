package spacebook.view.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.view.model.SpaceInquireDAO;
import spacebook.view.model.SpaceInquireDTO;

@Service
public class SpaceInquireServiceImpl implements SpaceInquireService{
	@Autowired
	SpaceInquireDAO dao;
	
	public void setDao(SpaceInquireDAO dao) {
		this.dao = dao;
	}

	@Override
	public void insertSpaceInquire(SpaceInquireDTO dto) {
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		dto.setInq_writeDate(sdf.format(dt));
		
		dao.spaceInquireInsert(dto);
	}

	@Override
	public void deleteSpaceInquire(SpaceInquireDTO dto) {
		dao.spaceInquireDelete(dto);
	}
}
