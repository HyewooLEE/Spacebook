package spacebook.rent.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceRentDAO extends SqlSessionDaoSupport {
	public void insertFavorite(SpaceRentDTO favoriteDTO) {
		getSqlSession().insert("spaceFavorite.insertFavorite", favoriteDTO);
	}
	public void deleteFavorite(SpaceRentDTO favoriteDTO) {
		getSqlSession().delete("spaceFavorite.deleteFavorite", favoriteDTO);
	}
	public SpaceRentDTO selectFavorite(SpaceRentDTO favoriteDTO) {
		return getSqlSession().selectOne("spaceFavorite.selectFavorite", favoriteDTO);
	}
	public List<SpaceRentDTO> favoriteList(int mem_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("mem_no", mem_no);
		
		return getSqlSession().selectList("spaceFavorite.favoriteList", map);
	}
	public int countSpaceFavorite(int space_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("space_no", space_no);
		
		return getSqlSession().selectOne("spaceFavorite.countSpaceFavorite", map);
	}
	public int countMemFavorite(int space_no, int mem_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("space_no", space_no);
		map.put("mem_no", mem_no);
		
		return getSqlSession().selectOne("spaceFavorite.countMemFavorite", map);
	}
	public int countMyFavorite(int mem_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("mem_no", mem_no);
		
		return getSqlSession().selectOne("spaceFavorite.countMyFavorite", map);
	}
}