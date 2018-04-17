package spacebook.view.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import spacebook.submit.model.SpaceDTO;

public class SpaceDetailDAO extends SqlSessionDaoSupport{
	public SpaceDTO spaceDetail(int space_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("space_no", space_no);
		
		return getSqlSession().selectOne("spaceView.spaceDetails", map);
	}
	
	public List<EtcSpaceDTO> etcSpaceList(int mem_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("mem_no", mem_no);
		
		return getSqlSession().selectList("spaceView.etcSpaceList", map);
	}
	
	public SpaceFacilityDTO facilityList(String fac_no) {
		System.out.println("fac_no:::" + fac_no);
		Map<String, String> map = new HashMap<String, String>();
		int facility_no = Integer.parseInt(fac_no);
		System.out.println(facility_no);
		map.put("fac_no", fac_no);
		
		return getSqlSession().selectOne("spaceView.facilityList", map);
	}
}
