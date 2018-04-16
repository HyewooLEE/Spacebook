package spacebook.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.main.model.MainDAO;
import spacebook.submit.model.SpaceDTO;

@Service
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDAO mainDao;
	
	public void setMainDao(MainDAO mainDao) {
		this.mainDao = mainDao;
	}

	@Override
	public List<SpaceDTO> categorySpace() {
		return mainDao.selectCategorySpace();
	}

	/*@Override
	public int countSpaceCategory(String space_category) {
		int countCate = mainDao.countSpaceCategory(space_category);
		return countCate;
	}*/

}
