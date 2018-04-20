package spacebook.favorite.service;

import spacebook.favorite.model.SpaceFavoriteDTO;

public interface SpaceFavoriteService {  
	
	public void insertFavorite(SpaceFavoriteDTO dto);
	
	public void deleteFavorite(SpaceFavoriteDTO dto);
	
	public SpaceFavoriteDTO selectFavorite(SpaceFavoriteDTO dto);
}