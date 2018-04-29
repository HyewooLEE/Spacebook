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
	
	public List<SpaceDTO> selectMySpace(HashMap<String, Integer> map){
		return getSqlSession().selectList("space.selectMySpace",map);
	}
	
	public int countMySpace(int mem_no) {
		return getSqlSession().selectOne("space.countMySpace",mem_no);
	}
	
	public void updateSpace(SpaceDTO spaceDto) {
		getSqlSession().update("space.updateSpace", spaceDto);
		getSqlSession().update("space.updateMap", spaceDto);
	}
	
	public void deleteSpace(SpaceDTO spaceDto) {
		getSqlSession().delete("space.deleteMap",spaceDto);
		getSqlSession().delete("space.deleteSpace",spaceDto);
		getSqlSession().delete("space.deleteReview",spaceDto);
	}
	
	public List<SpaceDTO> searchSpace(SpaceDTO spaceDto, String search) {
		List listtest = new ArrayList();
		List searchList = new ArrayList();
		Map map = new HashMap<String, List>();
		      
		String str = spaceDto.getFac_no();
		String str2 = search;
		      
		if(str!=null && str !="") {
		StringTokenizer token = new StringTokenizer(str,",");
		    
		while(token.hasMoreTokens()){
		     listtest.add(token.nextToken());
		}
		    map.put("Fac", listtest);
		}
		
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
	}
	
	public List<SpaceDTO> etcSpaceList(int mem_no) {
		return getSqlSession().selectList("space.etcSpace", mem_no);
	}
}
