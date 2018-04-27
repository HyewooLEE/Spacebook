package spacebook.rent.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceRentDAO extends SqlSessionDaoSupport {
	public void insertSpaceRent(SpaceRentDTO SpaceRentDTO) {
		getSqlSession().insert("spaceRent.insertSpaceRent", SpaceRentDTO);
	}
	
	public List<SpaceRentDTO> myRentList(SpaceRentVO pageNation) {
		return getSqlSession().selectList("spaceRent.myRentList", pageNation);
	}
	
	public int getMyRentListSize(int mem_no) {
		return getSqlSession().selectOne("spaceRent.getMyRentListSize", mem_no);
	}
	
	public void deleteMyRent(int rent_no) {
		getSqlSession().delete("spaceRent.deleteMyRent", rent_no);
	}
	
	public List<SpaceRentDTO> rentList(SpaceRentVO pageNation) {
		return getSqlSession().selectList("spaceRent.rentList", pageNation);
	}
	
	public List<SpaceRentDTO> rentList(int mem_no) {
		return getSqlSession().selectList("spaceRent.excelRentList", mem_no);
	}
	
	public int getRentListSize(int mem_no) {
		return getSqlSession().selectOne("spaceRent.getRentListSize", mem_no);
	}
	
}
