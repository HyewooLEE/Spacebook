package spacebook.submit.model;

import java.util.List;

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
	
	

}
