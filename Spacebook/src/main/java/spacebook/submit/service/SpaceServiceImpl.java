package spacebook.submit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.submit.model.SpaceDAO;
import spacebook.submit.model.SpaceDTO;
import spacebook.submit.model.SpaceFacilityDTO;

@Service
public class SpaceServiceImpl implements SpaceService{
	
	@Autowired
	private SpaceDAO spaceDao;

	public void setSpaceDao(SpaceDAO spaceDao) {
		this.spaceDao = spaceDao;
	}

	@Override
	public List<SpaceFacilityDTO> selectFacility() {
		List<SpaceFacilityDTO> facility = spaceDao.selectFacility();
		return facility;
	}
	
	@Override
	public void insertSpace(SpaceDTO spaceDto, SpaceFacilityDTO spaceFacilityDto) {
		spaceDao.insertSpace(spaceDto, spaceFacilityDto);
	}

	@Override
	public List<SpaceDTO> selectSpaceAll() {
		List<SpaceDTO> spaceAll = spaceDao.selectSpaceAll();
		return spaceAll;
	}

	@Override
	public List<SpaceDTO> selectMapList(){
		return spaceDao.selectMapList();
	}
	
	@Override
	public List<SpaceDTO> selectMySpace(SpaceDTO spaceDto) {
		return spaceDao.selectMySpace(spaceDto);
	}
	
	@Override
	public int countMySpace(SpaceDTO spaceDto) {
		return spaceDao.countMySpace(spaceDto);
	}

	@Override
	public void deleteSpace(SpaceDTO spaceDto) {
		spaceDao.deleteSpace(spaceDto);
	}
	
	@Override
	public List<SpaceDTO> searchSpace(SpaceDTO spaceDto, String search){
		return spaceDao.searchSpace(spaceDto, search);
	}

	
}
