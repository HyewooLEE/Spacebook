package spacebook.submit.service;

import java.util.List;

import spacebook.submit.model.SpaceDTO;
import spacebook.submit.model.SpaceFacilityDTO;

public interface SpaceService {
	
	public void insertSpace(SpaceDTO spaceDto,SpaceFacilityDTO spaceFacilityDto);
	
	public List<SpaceFacilityDTO> selectFacility();
	
	public List<SpaceDTO> selectSpaceAll();

}
