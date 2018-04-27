package spacebook.rent.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.rent.model.SpaceRentDAO;
import spacebook.rent.model.SpaceRentDTO;
import spacebook.rent.model.SpaceRentVO;

@Service
public class SpaceRentServiceImpl implements SpaceRentService{
	
	@Autowired
	SpaceRentDAO dao;
	
	public void setRentDAO(SpaceRentDAO rentDAO) {
		this.dao = rentDAO;
	}
	/*예약 등록 메소드*/
	@Override
	public void insertSpaceRent(SpaceRentDTO dto) {
		Date dt = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		dto.setRent_writedate(sdf.format(dt));
		
		dao.insertSpaceRent(dto);		
	}
	/*나의 예약 목록 출력 메소드*/
	@Override
	public List<SpaceRentDTO> myRentList(SpaceRentVO pageNation) {
		return dao.myRentList(pageNation);
		
	}
	/*나의 예약 리스트 사이즈 출력 메소드*/
	public int getMyRentListSize(int mem_no) {
		return dao.getMyRentListSize(mem_no);
	}
	/*나의 예약 삭제 메소드*/
	@Override
	public void deleteMyRent(int rent_no) {
		dao.deleteMyRent(rent_no);
	}

	/*예약 리스트 뽑아오는 메소드*/
	@Override
	public List<SpaceRentDTO> rentList(SpaceRentVO pageNation) {
		return dao.rentList(pageNation);
	}
	/*Excel 전체 리스트 출력*/ 
	@Override
	public List<SpaceRentDTO> rentList(int mem_no) {
		return dao.rentList(mem_no);
	}
	/*예약 리스트 사이즈 출력 메소드*/
	public int getRentListSize(int mem_no) {
		return dao.getRentListSize(mem_no);
	}
	
	
	
	
}
