package spacebook.favorite.service;

import java.util.List;

import spacebook.favorite.model.SpaceFavoriteDTO;

public interface SpaceFavoriteService {  
	
	public void insertFavorite(SpaceFavoriteDTO dto);
	
	public void deleteFavorite(SpaceFavoriteDTO dto);
	
	public SpaceFavoriteDTO selectFavorite(SpaceFavoriteDTO dto);
	
	public List<SpaceFavoriteDTO> favoriteList(SpaceFavoriteDTO dto);
}