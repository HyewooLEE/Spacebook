package spacebook.rent.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.rent.model.SpaceRentDAO;
import spacebook.rent.model.SpaceRentDTO;

@Service
public class SpaceRentServiceImpl implements SpaceRentService{
	
	@Autowired
	SpaceRentDAO dao;
	
	public void setRentDAO(SpaceRentDAO rentDAO) {
		this.dao = rentDAO;
	}

	@Override
	public void insertSpaceRent(SpaceRentDTO dto) {
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		dto.setRent_writedate(sdf.format(dt));
		
		dao.insertSpaceRent(dto);		
	}

	@Override
	public List<SpaceRentDTO> myRentList(int mem_no) {
		return dao.myRentList(mem_no);
		
	}
}
