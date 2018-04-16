package spacebook.main.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import spacebook.submit.model.SpaceDTO;

public class MainDAO extends SqlSessionDaoSupport{
	
	public List<SpaceDTO> selectCategorySpace(){
		return getSqlSession().selectList("main.selectSpaceCategory");
	}
	
	/*public int countSpaceCategory(String space_category) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("space_category", space_category);
		
		return getSqlSession().selectOne("main.countSpaceCategory",map);
	}*/

}
