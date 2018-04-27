package spacebook.submit.service;

import java.util.List;

import spacebook.submit.model.SpaceDTO;
import spacebook.submit.model.SpaceFacilityDTO;

public interface SpaceService {
	
	public void insertSpace(SpaceDTO spaceDto,SpaceFacilityDTO spaceFacilityDto);
	
	public List<SpaceFacilityDTO> selectFacility();
	
	public List<SpaceDTO> selectSpaceAll();

	public List<SpaceDTO> selectMapList();
	
	public List<SpaceDTO> selectMySpace(SpaceDTO spaceDto);
	
	public int countMySpace(SpaceDTO spaceDto);
	
	public void updateSpace(SpaceDTO spaceDto);
	
	public void deleteSpace(SpaceDTO spaceDto);

	public List<SpaceDTO> searchSpace(SpaceDTO spaceDto, String search);
	
	public List<SpaceDTO> etcSpaceList(int mem_no);
}
