package spacebook.view.service;

import java.util.List;

import spacebook.submit.model.SpaceDTO;
import spacebook.view.model.EtcSpaceDTO;
import spacebook.view.model.SpaceFacilityDTO;

public interface HostViewService {
	public SpaceDTO spaceDetail(int space_no);
	
	public List<EtcSpaceDTO> etcSpaceList(int mem_no);
	
	public SpaceFacilityDTO facilityList(String fac_no);
}
