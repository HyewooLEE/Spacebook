package spacebook.favorite.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceFavoriteDAO extends SqlSessionDaoSupport {

	public void insertSpaceFavorite(SpaceFavoriteDTO favoriteDTO) {
		getSqlSession().insert("spaceFavorite.insertFavorite", favoriteDTO);
	}
	
}
