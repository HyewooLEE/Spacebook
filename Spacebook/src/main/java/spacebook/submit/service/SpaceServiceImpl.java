package spacebook.submit.service;

import java.util.HashMap;
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
	public List<SpaceDTO> selectMySpace(int pageNum, int mem_no) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("pageNumber", pageNum);
		map.put("mem_no", mem_no);
		return spaceDao.selectMySpace(map);
	}
	
	@Override
	public int countMySpace(int mem_no) {
		return spaceDao.countMySpace(mem_no);
	}
	
	@Override
	public void updateSpace(SpaceDTO spaceDto) {
		spaceDao.updateSpace(spaceDto);
	}

	@Override
	public void deleteSpace(SpaceDTO spaceDto) {
		spaceDao.deleteSpace(spaceDto);
	}
	
	@Override
	public List<SpaceDTO> searchSpace(SpaceDTO spaceDto, String search){
		return spaceDao.searchSpace(spaceDto, search);
	}

	@Override
	public List<SpaceDTO> etcSpaceList(int mem_no){
		return spaceDao.etcSpaceList(mem_no);
	}
	
	@Override
	public SpaceDTO selectSpace(int space_no){
		return spaceDao.selectSpace(space_no);
	}
}
