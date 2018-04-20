package spacebook.favorite.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class SpaceFavoriteDAO extends SqlSessionDaoSupport {
	public void insertFavorite(SpaceFavoriteDTO favoriteDTO) {
		getSqlSession().insert("spaceFavorite.insertFavorite", favoriteDTO);
	}
	public void deleteFavorite(SpaceFavoriteDTO favoriteDTO) {
		getSqlSession().delete("spaceFavorite.deleteFavorite", favoriteDTO);
	}
	public SpaceFavoriteDTO selectFavorite(SpaceFavoriteDTO favoriteDTO) {
		return getSqlSession().selectOne("spaceFavorite.selectFavorite", favoriteDTO);
	}
}
