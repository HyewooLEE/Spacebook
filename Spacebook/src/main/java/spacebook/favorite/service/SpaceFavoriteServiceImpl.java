package spacebook.favorite.service;

import java.util.List;

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

	@Override
	public List<SpaceFavoriteDTO> favoriteList(int mem_no) {
		return favoriteDAO.favoriteList(mem_no);
	}

	@Override
	public int countSpaceFavorite(int space_no) {
		return favoriteDAO.countSpaceFavorite(space_no);
	}

	@Override
	public int countMemFavorite(int space_no, int mem_no) {
		return favoriteDAO.countMemFavorite(space_no, mem_no);
	}

	@Override
	public int countMyFavorite(int mem_no) {
		return favoriteDAO.countMyFavorite(mem_no);
	}
}
