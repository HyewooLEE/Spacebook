package spacebook.rent.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceRentDAO extends SqlSessionDaoSupport {
	public void insertSpaceRent(SpaceRentDTO SpaceRentDTO) {
		getSqlSession().insert("spaceRent.insertSpaceRent", SpaceRentDTO);
	}
	
	public List<SpaceRentDTO> myRentList(int mem_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("mem_no", mem_no);
		
		return getSqlSession().selectList("spaceRent.myRentList", map);
	}
	
	public void deleteMyRent(int rent_no) {
		getSqlSession().delete("spaceRent.deleteMyRent", rent_no);
	}
	
	public List<SpaceRentDTO> rentList(int mem_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("mem_no", mem_no);
		
		return getSqlSession().selectList("spaceRent.rentList", map);
	}
	
}
