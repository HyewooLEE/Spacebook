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
	
	/*public List<SpaceDTO> searchSpace(SpaceDTO spaceDto, String search) {


		
		
		if(str2!=null && str2 !="") {
		StringTokenizer token = new StringTokenizer(str2," ");
		while(token.hasMoreTokens()){
			searchList.add(token.nextToken());
		}
			map.put("search", searchList);
		}
		map.put("SpaceDTO", spaceDto);
		List<SpaceDTO> test = getSqlSession().selectList("space.search", map);
		
		return getSqlSession().selectList("space.search", map);
	}*/
}
