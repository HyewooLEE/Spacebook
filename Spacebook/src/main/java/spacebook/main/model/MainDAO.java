package spacebook.main.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import spacebook.login.model.MemberVO;
import spacebook.submit.model.SpaceDTO;

public class MainDAO extends SqlSessionDaoSupport{
	
	public List<SpaceDTO> selectCategorySpace(){
		return getSqlSession().selectList("main.selectSpaceCategory");
	}

	public List<MainDTO> reviewList() {
		return getSqlSession().selectList("main.reviewList");
	}
	
	public List<SpaceDTO> recommendSpace(MemberVO vo){
		List listtest = new ArrayList();
		Map map = new HashMap<String, List>();
		List<SpaceDTO> recommendList = new ArrayList();     
		String str = vo.getMem_Favor();
		
		if(str!=null && str !="") {
		StringTokenizer token = new StringTokenizer(str,",");
		    
		while(token.hasMoreTokens()){
		     listtest.add(token.nextToken());
		}
		    map.put("Favor", listtest);
		    recommendList = getSqlSession().selectList("main.recommendList",map);
		}else {
			recommendList = getSqlSession().selectList("main.recommendMain");
		}
		/*if(vo == null) {
			System.out.println("test2");
			recommendList = getSqlSession().selectList("main.recommendMain");
		}*/
		return recommendList;
	}

}
