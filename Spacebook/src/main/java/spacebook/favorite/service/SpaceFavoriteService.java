package spacebook.favorite.service;

import java.util.List;

import spacebook.favorite.model.SpaceFavoriteDTO;
import spacebook.favorite.model.SpaceFavoriteVO;

public interface SpaceFavoriteService {  
	
	public void insertFavorite(SpaceFavoriteDTO dto);
	
	public void deleteFavorite(SpaceFavoriteDTO dto);
	
	public SpaceFavoriteDTO selectFavorite(SpaceFavoriteDTO dto);
	
	public List<SpaceFavoriteDTO> favoriteList(SpaceFavoriteVO pageNation);
	
	public int countSpaceFavorite(int space_no);
	
	public int countMemFavorite(int space_no, int mem_no);
	
	public int countMyFavorite(int mem_no);
}