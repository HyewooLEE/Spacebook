package spacebook.favorite.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.favorite.model.SpaceFavoriteDAO;
import spacebook.favorite.model.SpaceFavoriteDTO;

@Service
public class SpaceFavoriteServiceImpl implements SpaceFavoriteService{
	
	@Autowired
	SpaceFavoriteDAO favoriteDAO;
	
	public void setDao(SpaceFavoriteDAO favoriteDAO) {
		this.favoriteDAO = favoriteDAO;
	}

	@Override
	public void insertFavorite(SpaceFavoriteDTO dto) {
		favoriteDAO.insertFavorite(dto);
	}

	@Override
	public void deleteFavorite(SpaceFavoriteDTO dto) {
		favoriteDAO.deleteFavorite(dto);
	}

	@Override
	public SpaceFavoriteDTO selectFavorite(SpaceFavoriteDTO dto) {
		return favoriteDAO.selectFavorite(dto);
	}
}
