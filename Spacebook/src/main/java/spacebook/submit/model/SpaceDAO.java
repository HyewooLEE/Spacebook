package spacebook.submit.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceDAO extends SqlSessionDaoSupport{
	
	//편의시설 list
	public List<SpaceFacilityDTO> selectFacility(){
		return getSqlSession().selectList("space.selectFacility");
	}
	
	public void insertSpace(SpaceDTO spaceDto, SpaceFacilityDTO spaceFacilityDto) {
		getSqlSession().insert("space.insertSpace", spaceDto);
		getSqlSession().insert("space.insertMap", spaceDto);
	}
	
	public List<SpaceDTO> selectSpaceAll(){
		return getSqlSession().selectList("space.selectSpaceAll");
	}
	
	public List<SpaceDTO> selectMapList(){
		return getSqlSession().selectList("space.spaceMap");
	}
	
	public void deleteSpace(SpaceDTO spaceDto) {
		getSqlSession().delete("space.deleteMap",spaceDto);
		getSqlSession().delete("space.deleteSpace",spaceDto);
	}
	
	public List<SpaceDTO> searchSpace(SpaceDTO spaceDto, String search) {
		List listtest = new ArrayList();
		List searchList = new ArrayList();
		Map map = new HashMap<String, List>();
		
		String str = spaceDto.getFac_no();
		
		if(str!=null && str !="") {
		StringTokenizer token = new StringTokenizer(str,",");
		
		while(token.hasMoreTokens()){
			listtest.add(token.nextToken());
		}
		map.put("Fac", listtest);
		}
		
		
		if(search!=null && search !="") {
		StringTokenizer token = new StringTokenizer(search," ");
		while(token.hasMoreTokens()){
			searchList.add(token.nextToken());
		}
			map.put("search", searchList);
		}
		
		
		map.put("SpaceDTO", spaceDto);
		
		
		return getSqlSession().selectList("space.search", map);
	}
	
	

}
